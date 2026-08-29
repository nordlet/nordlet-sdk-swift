import Foundation

public struct PostV1CaptureDocumentsConfirmRequestNewSupplier: Codable, Hashable, Sendable {
    public let name: String
    public let code: String?
    public let vatCode: String?
    public let countryCode: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        name: String,
        code: String? = nil,
        vatCode: String? = nil,
        countryCode: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.name = name
        self.code = code
        self.vatCode = vatCode
        self.countryCode = countryCode
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.code = try container.decodeIfPresent(String.self, forKey: .code)
        self.vatCode = try container.decodeIfPresent(String.self, forKey: .vatCode)
        self.countryCode = try container.decodeIfPresent(String.self, forKey: .countryCode)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.name, forKey: .name)
        try container.encodeIfPresent(self.code, forKey: .code)
        try container.encodeIfPresent(self.vatCode, forKey: .vatCode)
        try container.encodeIfPresent(self.countryCode, forKey: .countryCode)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case code
        case vatCode
        case countryCode
    }
}