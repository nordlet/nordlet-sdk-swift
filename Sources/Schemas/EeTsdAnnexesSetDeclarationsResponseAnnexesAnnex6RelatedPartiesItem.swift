import Foundation

public struct EeTsdAnnexesSetDeclarationsResponseAnnexesAnnex6RelatedPartiesItem: Codable, Hashable, Sendable {
    public let registryCode: String
    public let name: String
    public let country: String
    public let amount: String
    public let typeCode: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        registryCode: String,
        name: String,
        country: String,
        amount: String,
        typeCode: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.registryCode = registryCode
        self.name = name
        self.country = country
        self.amount = amount
        self.typeCode = typeCode
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.registryCode = try container.decode(String.self, forKey: .registryCode)
        self.name = try container.decode(String.self, forKey: .name)
        self.country = try container.decode(String.self, forKey: .country)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.typeCode = try container.decode(String.self, forKey: .typeCode)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.registryCode, forKey: .registryCode)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.country, forKey: .country)
        try container.encode(self.amount, forKey: .amount)
        try container.encode(self.typeCode, forKey: .typeCode)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case registryCode
        case name
        case country
        case amount
        case typeCode
    }
}