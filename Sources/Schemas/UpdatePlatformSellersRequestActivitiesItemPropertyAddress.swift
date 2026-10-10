import Foundation

public struct UpdatePlatformSellersRequestActivitiesItemPropertyAddress: Codable, Hashable, Sendable {
    public let countryCode: String
    public let street: Nullable<String>?
    public let buildingIdentifier: Nullable<String>?
    public let postCode: Nullable<String>?
    public let city: Nullable<String>?
    public let free: Nullable<String>?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        countryCode: String,
        street: Nullable<String>? = nil,
        buildingIdentifier: Nullable<String>? = nil,
        postCode: Nullable<String>? = nil,
        city: Nullable<String>? = nil,
        free: Nullable<String>? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.countryCode = countryCode
        self.street = street
        self.buildingIdentifier = buildingIdentifier
        self.postCode = postCode
        self.city = city
        self.free = free
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.countryCode = try container.decode(String.self, forKey: .countryCode)
        self.street = try container.decodeNullableIfPresent(String.self, forKey: .street)
        self.buildingIdentifier = try container.decodeNullableIfPresent(String.self, forKey: .buildingIdentifier)
        self.postCode = try container.decodeNullableIfPresent(String.self, forKey: .postCode)
        self.city = try container.decodeNullableIfPresent(String.self, forKey: .city)
        self.free = try container.decodeNullableIfPresent(String.self, forKey: .free)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.countryCode, forKey: .countryCode)
        try container.encodeNullableIfPresent(self.street, forKey: .street)
        try container.encodeNullableIfPresent(self.buildingIdentifier, forKey: .buildingIdentifier)
        try container.encodeNullableIfPresent(self.postCode, forKey: .postCode)
        try container.encodeNullableIfPresent(self.city, forKey: .city)
        try container.encodeNullableIfPresent(self.free, forKey: .free)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case countryCode
        case street
        case buildingIdentifier
        case postCode
        case city
        case free
    }
}