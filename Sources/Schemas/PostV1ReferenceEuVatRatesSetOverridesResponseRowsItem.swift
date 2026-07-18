import Foundation

public struct PostV1ReferenceEuVatRatesSetOverridesResponseRowsItem: Codable, Hashable, Sendable {
    public let category: PostV1ReferenceEuVatRatesSetOverridesResponseRowsItemCategory
    public let ratePercent: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        category: PostV1ReferenceEuVatRatesSetOverridesResponseRowsItemCategory,
        ratePercent: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.category = category
        self.ratePercent = ratePercent
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.category = try container.decode(PostV1ReferenceEuVatRatesSetOverridesResponseRowsItemCategory.self, forKey: .category)
        self.ratePercent = try container.decode(String.self, forKey: .ratePercent)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.category, forKey: .category)
        try container.encode(self.ratePercent, forKey: .ratePercent)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case category
        case ratePercent
    }
}