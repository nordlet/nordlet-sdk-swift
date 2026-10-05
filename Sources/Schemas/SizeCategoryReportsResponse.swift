import Foundation

public struct SizeCategoryReportsResponse: Codable, Hashable, Sendable {
    public let year: Int64
    public let criteria: SizeCategoryReportsResponseCriteria
    public let category: SizeCategoryReportsResponseCategory
    public let thresholds: [String: SizeCategoryReportsResponseThresholdsValue]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        year: Int64,
        criteria: SizeCategoryReportsResponseCriteria,
        category: SizeCategoryReportsResponseCategory,
        thresholds: [String: SizeCategoryReportsResponseThresholdsValue],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.year = year
        self.criteria = criteria
        self.category = category
        self.thresholds = thresholds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.criteria = try container.decode(SizeCategoryReportsResponseCriteria.self, forKey: .criteria)
        self.category = try container.decode(SizeCategoryReportsResponseCategory.self, forKey: .category)
        self.thresholds = try container.decode([String: SizeCategoryReportsResponseThresholdsValue].self, forKey: .thresholds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.criteria, forKey: .criteria)
        try container.encode(self.category, forKey: .category)
        try container.encode(self.thresholds, forKey: .thresholds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case year
        case criteria
        case category
        case thresholds
    }
}