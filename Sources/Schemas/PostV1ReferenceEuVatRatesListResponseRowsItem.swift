import Foundation

public struct PostV1ReferenceEuVatRatesListResponseRowsItem: Codable, Hashable, Sendable {
    public let countryCode: String
    public let category: PostV1ReferenceEuVatRatesListResponseRowsItemCategory
    public let ratePercent: String
    public let validFrom: Nullable<String>
    public let validTo: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        countryCode: String,
        category: PostV1ReferenceEuVatRatesListResponseRowsItemCategory,
        ratePercent: String,
        validFrom: Nullable<String>,
        validTo: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.countryCode = countryCode
        self.category = category
        self.ratePercent = ratePercent
        self.validFrom = validFrom
        self.validTo = validTo
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.countryCode = try container.decode(String.self, forKey: .countryCode)
        self.category = try container.decode(PostV1ReferenceEuVatRatesListResponseRowsItemCategory.self, forKey: .category)
        self.ratePercent = try container.decode(String.self, forKey: .ratePercent)
        self.validFrom = try container.decode(Nullable<String>.self, forKey: .validFrom)
        self.validTo = try container.decode(Nullable<String>.self, forKey: .validTo)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.countryCode, forKey: .countryCode)
        try container.encode(self.category, forKey: .category)
        try container.encode(self.ratePercent, forKey: .ratePercent)
        try container.encode(self.validFrom, forKey: .validFrom)
        try container.encode(self.validTo, forKey: .validTo)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case countryCode
        case category
        case ratePercent
        case validFrom
        case validTo
    }
}