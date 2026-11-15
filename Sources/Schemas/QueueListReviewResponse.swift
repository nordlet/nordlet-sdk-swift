import Foundation

public struct QueueListReviewResponse: Codable, Hashable, Sendable {
    public let items: [QueueListReviewResponseItemsItem]
    public let total: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        items: [QueueListReviewResponseItemsItem],
        total: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.items = items
        self.total = total
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.items = try container.decode([QueueListReviewResponseItemsItem].self, forKey: .items)
        self.total = try container.decode(Int64.self, forKey: .total)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.items, forKey: .items)
        try container.encode(self.total, forKey: .total)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case items
        case total
    }
}