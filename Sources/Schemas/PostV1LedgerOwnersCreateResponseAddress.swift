import Foundation

public struct PostV1LedgerOwnersCreateResponseAddress: Codable, Hashable, Sendable {
    public let street: String?
    public let city: String?
    public let postalCode: String?
    public let countryCode: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        street: String? = nil,
        city: String? = nil,
        postalCode: String? = nil,
        countryCode: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.street = street
        self.city = city
        self.postalCode = postalCode
        self.countryCode = countryCode
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.street = try container.decodeIfPresent(String.self, forKey: .street)
        self.city = try container.decodeIfPresent(String.self, forKey: .city)
        self.postalCode = try container.decodeIfPresent(String.self, forKey: .postalCode)
        self.countryCode = try container.decodeIfPresent(String.self, forKey: .countryCode)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.street, forKey: .street)
        try container.encodeIfPresent(self.city, forKey: .city)
        try container.encodeIfPresent(self.postalCode, forKey: .postalCode)
        try container.encodeIfPresent(self.countryCode, forKey: .countryCode)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case street
        case city
        case postalCode
        case countryCode
    }
}