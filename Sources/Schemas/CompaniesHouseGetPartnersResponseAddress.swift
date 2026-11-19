import Foundation

public struct CompaniesHouseGetPartnersResponseAddress: Codable, Hashable, Sendable {
    public let street: Nullable<String>
    public let city: Nullable<String>
    public let county: Nullable<String>
    public let postalCode: Nullable<String>
    public let countryCode: CompaniesHouseGetPartnersResponseAddressCountryCode
    public let subdivision: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        street: Nullable<String>,
        city: Nullable<String>,
        county: Nullable<String>,
        postalCode: Nullable<String>,
        countryCode: CompaniesHouseGetPartnersResponseAddressCountryCode,
        subdivision: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.street = street
        self.city = city
        self.county = county
        self.postalCode = postalCode
        self.countryCode = countryCode
        self.subdivision = subdivision
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.street = try container.decode(Nullable<String>.self, forKey: .street)
        self.city = try container.decode(Nullable<String>.self, forKey: .city)
        self.county = try container.decode(Nullable<String>.self, forKey: .county)
        self.postalCode = try container.decode(Nullable<String>.self, forKey: .postalCode)
        self.countryCode = try container.decode(CompaniesHouseGetPartnersResponseAddressCountryCode.self, forKey: .countryCode)
        self.subdivision = try container.decode(Nullable<String>.self, forKey: .subdivision)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.street, forKey: .street)
        try container.encode(self.city, forKey: .city)
        try container.encode(self.county, forKey: .county)
        try container.encode(self.postalCode, forKey: .postalCode)
        try container.encode(self.countryCode, forKey: .countryCode)
        try container.encode(self.subdivision, forKey: .subdivision)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case street
        case city
        case county
        case postalCode
        case countryCode
        case subdivision
    }
}