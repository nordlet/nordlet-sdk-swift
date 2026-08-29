import Foundation

public struct PostV1CaptureDocumentsUploadResponseExtractionSupplier: Codable, Hashable, Sendable {
    public let name: Nullable<String>
    public let code: Nullable<String>
    public let vatCode: Nullable<String>
    public let countryCode: Nullable<String>
    public let iban: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        name: Nullable<String>,
        code: Nullable<String>,
        vatCode: Nullable<String>,
        countryCode: Nullable<String>,
        iban: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.name = name
        self.code = code
        self.vatCode = vatCode
        self.countryCode = countryCode
        self.iban = iban
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(Nullable<String>.self, forKey: .name)
        self.code = try container.decode(Nullable<String>.self, forKey: .code)
        self.vatCode = try container.decode(Nullable<String>.self, forKey: .vatCode)
        self.countryCode = try container.decode(Nullable<String>.self, forKey: .countryCode)
        self.iban = try container.decode(Nullable<String>.self, forKey: .iban)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.vatCode, forKey: .vatCode)
        try container.encode(self.countryCode, forKey: .countryCode)
        try container.encode(self.iban, forKey: .iban)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case code
        case vatCode
        case countryCode
        case iban
    }
}