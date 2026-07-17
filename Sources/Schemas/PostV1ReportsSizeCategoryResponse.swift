import Foundation

public struct PostV1ReportsSizeCategoryResponse: Codable, Hashable, Sendable {
    public let year: Int64
    public let criteria: PostV1ReportsSizeCategoryResponseCriteria
    public let category: PostV1ReportsSizeCategoryResponseCategory
    public let thresholds: [String: PostV1ReportsSizeCategoryResponseThresholdsValue]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        year: Int64,
        criteria: PostV1ReportsSizeCategoryResponseCriteria,
        category: PostV1ReportsSizeCategoryResponseCategory,
        thresholds: [String: PostV1ReportsSizeCategoryResponseThresholdsValue],
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
        self.criteria = try container.decode(PostV1ReportsSizeCategoryResponseCriteria.self, forKey: .criteria)
        self.category = try container.decode(PostV1ReportsSizeCategoryResponseCategory.self, forKey: .category)
        self.thresholds = try container.decode([String: PostV1ReportsSizeCategoryResponseThresholdsValue].self, forKey: .thresholds)
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