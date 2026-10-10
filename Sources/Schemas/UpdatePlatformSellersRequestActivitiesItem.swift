import Foundation

public struct UpdatePlatformSellersRequestActivitiesItem: Codable, Hashable, Sendable {
    public let year: Int64
    public let activity: UpdatePlatformSellersRequestActivitiesItemActivity
    public let propertyAddress: Nullable<UpdatePlatformSellersRequestActivitiesItemPropertyAddress>?
    public let landRegistrationNumber: Nullable<String>?
    public let propertyType: Nullable<UpdatePlatformSellersRequestActivitiesItemPropertyType>?
    public let otherPropertyType: Nullable<String>?
    public let rentedDays: Nullable<Int64>?
    public let consideration: [String]
    public let fees: [String]
    public let taxes: [String]
    public let numberOfActivities: [Int64]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        year: Int64,
        activity: UpdatePlatformSellersRequestActivitiesItemActivity,
        propertyAddress: Nullable<UpdatePlatformSellersRequestActivitiesItemPropertyAddress>? = nil,
        landRegistrationNumber: Nullable<String>? = nil,
        propertyType: Nullable<UpdatePlatformSellersRequestActivitiesItemPropertyType>? = nil,
        otherPropertyType: Nullable<String>? = nil,
        rentedDays: Nullable<Int64>? = nil,
        consideration: [String],
        fees: [String],
        taxes: [String],
        numberOfActivities: [Int64],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.year = year
        self.activity = activity
        self.propertyAddress = propertyAddress
        self.landRegistrationNumber = landRegistrationNumber
        self.propertyType = propertyType
        self.otherPropertyType = otherPropertyType
        self.rentedDays = rentedDays
        self.consideration = consideration
        self.fees = fees
        self.taxes = taxes
        self.numberOfActivities = numberOfActivities
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.activity = try container.decode(UpdatePlatformSellersRequestActivitiesItemActivity.self, forKey: .activity)
        self.propertyAddress = try container.decodeNullableIfPresent(UpdatePlatformSellersRequestActivitiesItemPropertyAddress.self, forKey: .propertyAddress)
        self.landRegistrationNumber = try container.decodeNullableIfPresent(String.self, forKey: .landRegistrationNumber)
        self.propertyType = try container.decodeNullableIfPresent(UpdatePlatformSellersRequestActivitiesItemPropertyType.self, forKey: .propertyType)
        self.otherPropertyType = try container.decodeNullableIfPresent(String.self, forKey: .otherPropertyType)
        self.rentedDays = try container.decodeNullableIfPresent(Int64.self, forKey: .rentedDays)
        self.consideration = try container.decode([String].self, forKey: .consideration)
        self.fees = try container.decode([String].self, forKey: .fees)
        self.taxes = try container.decode([String].self, forKey: .taxes)
        self.numberOfActivities = try container.decode([Int64].self, forKey: .numberOfActivities)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.activity, forKey: .activity)
        try container.encodeNullableIfPresent(self.propertyAddress, forKey: .propertyAddress)
        try container.encodeNullableIfPresent(self.landRegistrationNumber, forKey: .landRegistrationNumber)
        try container.encodeNullableIfPresent(self.propertyType, forKey: .propertyType)
        try container.encodeNullableIfPresent(self.otherPropertyType, forKey: .otherPropertyType)
        try container.encodeNullableIfPresent(self.rentedDays, forKey: .rentedDays)
        try container.encode(self.consideration, forKey: .consideration)
        try container.encode(self.fees, forKey: .fees)
        try container.encode(self.taxes, forKey: .taxes)
        try container.encode(self.numberOfActivities, forKey: .numberOfActivities)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case year
        case activity
        case propertyAddress
        case landRegistrationNumber
        case propertyType
        case otherPropertyType
        case rentedDays
        case consideration
        case fees
        case taxes
        case numberOfActivities
    }
}