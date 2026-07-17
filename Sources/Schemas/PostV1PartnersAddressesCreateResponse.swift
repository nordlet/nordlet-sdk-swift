import Foundation

public struct PostV1PartnersAddressesCreateResponse: Codable, Hashable, Sendable {
    public let id: String
    public let partnerId: String
    public let type: String
    public let street: Nullable<String>
    public let city: Nullable<String>
    public let postalCode: Nullable<String>
    public let countryCode: Nullable<String>
    public let isDefault: Bool
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        partnerId: String,
        type: String,
        street: Nullable<String>,
        city: Nullable<String>,
        postalCode: Nullable<String>,
        countryCode: Nullable<String>,
        isDefault: Bool,
        createdAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.partnerId = partnerId
        self.type = type
        self.street = street
        self.city = city
        self.postalCode = postalCode
        self.countryCode = countryCode
        self.isDefault = isDefault
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.partnerId = try container.decode(String.self, forKey: .partnerId)
        self.type = try container.decode(String.self, forKey: .type)
        self.street = try container.decode(Nullable<String>.self, forKey: .street)
        self.city = try container.decode(Nullable<String>.self, forKey: .city)
        self.postalCode = try container.decode(Nullable<String>.self, forKey: .postalCode)
        self.countryCode = try container.decode(Nullable<String>.self, forKey: .countryCode)
        self.isDefault = try container.decode(Bool.self, forKey: .isDefault)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.partnerId, forKey: .partnerId)
        try container.encode(self.type, forKey: .type)
        try container.encode(self.street, forKey: .street)
        try container.encode(self.city, forKey: .city)
        try container.encode(self.postalCode, forKey: .postalCode)
        try container.encode(self.countryCode, forKey: .countryCode)
        try container.encode(self.isDefault, forKey: .isDefault)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case partnerId
        case type
        case street
        case city
        case postalCode
        case countryCode
        case isDefault
        case createdAt
    }
}