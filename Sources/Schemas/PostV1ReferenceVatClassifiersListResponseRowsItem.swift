import Foundation

public struct PostV1ReferenceVatClassifiersListResponseRowsItem: Codable, Hashable, Sendable {
    public let code: String
    public let countryCode: String
    public let name: String
    public let ratePercent: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        code: String,
        countryCode: String,
        name: String,
        ratePercent: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.code = code
        self.countryCode = countryCode
        self.name = name
        self.ratePercent = ratePercent
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.code = try container.decode(String.self, forKey: .code)
        self.countryCode = try container.decode(String.self, forKey: .countryCode)
        self.name = try container.decode(String.self, forKey: .name)
        self.ratePercent = try container.decode(Nullable<String>.self, forKey: .ratePercent)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.countryCode, forKey: .countryCode)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.ratePercent, forKey: .ratePercent)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case countryCode
        case name
        case ratePercent
    }
}