import Foundation

public struct PostV1DeclarationsDeReturnFactsSetRequestFactsLandHoldingsItem: Codable, Hashable, Sendable {
    public let fileNumber: String
    public let assessedValue: String
    public let category: PostV1DeclarationsDeReturnFactsSetRequestFactsLandHoldingsItemCategory
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        fileNumber: String,
        assessedValue: String,
        category: PostV1DeclarationsDeReturnFactsSetRequestFactsLandHoldingsItemCategory,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.fileNumber = fileNumber
        self.assessedValue = assessedValue
        self.category = category
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.fileNumber = try container.decode(String.self, forKey: .fileNumber)
        self.assessedValue = try container.decode(String.self, forKey: .assessedValue)
        self.category = try container.decode(PostV1DeclarationsDeReturnFactsSetRequestFactsLandHoldingsItemCategory.self, forKey: .category)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.fileNumber, forKey: .fileNumber)
        try container.encode(self.assessedValue, forKey: .assessedValue)
        try container.encode(self.category, forKey: .category)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case fileNumber
        case assessedValue
        case category
    }
}