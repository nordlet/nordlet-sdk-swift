import Foundation

public struct CreatePartnersResponseAddress: Codable, Hashable, Sendable {
    public let street: String?
    public let city: String?
    public let municipality: String?
    public let county: String?
    public let postalCode: String?
    public let countryCode: String?
    /// ISO 3166-2 code of the state, province or UK nation, such as US-CA or GB-SCT
    public let subdivision: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        street: String? = nil,
        city: String? = nil,
        municipality: String? = nil,
        county: String? = nil,
        postalCode: String? = nil,
        countryCode: String? = nil,
        subdivision: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.street = street
        self.city = city
        self.municipality = municipality
        self.county = county
        self.postalCode = postalCode
        self.countryCode = countryCode
        self.subdivision = subdivision
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.street = try container.decodeIfPresent(String.self, forKey: .street)
        self.city = try container.decodeIfPresent(String.self, forKey: .city)
        self.municipality = try container.decodeIfPresent(String.self, forKey: .municipality)
        self.county = try container.decodeIfPresent(String.self, forKey: .county)
        self.postalCode = try container.decodeIfPresent(String.self, forKey: .postalCode)
        self.countryCode = try container.decodeIfPresent(String.self, forKey: .countryCode)
        self.subdivision = try container.decodeIfPresent(String.self, forKey: .subdivision)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.street, forKey: .street)
        try container.encodeIfPresent(self.city, forKey: .city)
        try container.encodeIfPresent(self.municipality, forKey: .municipality)
        try container.encodeIfPresent(self.county, forKey: .county)
        try container.encodeIfPresent(self.postalCode, forKey: .postalCode)
        try container.encodeIfPresent(self.countryCode, forKey: .countryCode)
        try container.encodeIfPresent(self.subdivision, forKey: .subdivision)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case street
        case city
        case municipality
        case county
        case postalCode
        case countryCode
        case subdivision
    }
}