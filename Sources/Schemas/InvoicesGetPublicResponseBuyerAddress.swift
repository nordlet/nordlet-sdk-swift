import Foundation

public struct InvoicesGetPublicResponseBuyerAddress: Codable, Hashable, Sendable {
    public let street: Nullable<String>
    public let city: Nullable<String>
    public let postalCode: Nullable<String>
    public let countryCode: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        street: Nullable<String>,
        city: Nullable<String>,
        postalCode: Nullable<String>,
        countryCode: Nullable<String>,
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
        self.street = try container.decode(Nullable<String>.self, forKey: .street)
        self.city = try container.decode(Nullable<String>.self, forKey: .city)
        self.postalCode = try container.decode(Nullable<String>.self, forKey: .postalCode)
        self.countryCode = try container.decode(Nullable<String>.self, forKey: .countryCode)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.street, forKey: .street)
        try container.encode(self.city, forKey: .city)
        try container.encode(self.postalCode, forKey: .postalCode)
        try container.encode(self.countryCode, forKey: .countryCode)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case street
        case city
        case postalCode
        case countryCode
    }
}