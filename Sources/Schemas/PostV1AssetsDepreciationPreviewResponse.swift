import Foundation

public struct PostV1AssetsDepreciationPreviewResponse: Codable, Hashable, Sendable {
    public let rows: [PostV1AssetsDepreciationPreviewResponseRowsItem]
    public let total: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        rows: [PostV1AssetsDepreciationPreviewResponseRowsItem],
        total: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.rows = rows
        self.total = total
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.rows = try container.decode([PostV1AssetsDepreciationPreviewResponseRowsItem].self, forKey: .rows)
        self.total = try container.decode(String.self, forKey: .total)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.rows, forKey: .rows)
        try container.encode(self.total, forKey: .total)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case rows
        case total
    }
}