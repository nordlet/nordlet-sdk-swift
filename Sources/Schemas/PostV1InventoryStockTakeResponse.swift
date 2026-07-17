import Foundation

public struct PostV1InventoryStockTakeResponse: Codable, Hashable, Sendable {
    public let rows: [PostV1InventoryStockTakeResponseRowsItem]
    public let journalTransactionId: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        rows: [PostV1InventoryStockTakeResponseRowsItem],
        journalTransactionId: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.rows = rows
        self.journalTransactionId = journalTransactionId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.rows = try container.decode([PostV1InventoryStockTakeResponseRowsItem].self, forKey: .rows)
        self.journalTransactionId = try container.decode(Nullable<String>.self, forKey: .journalTransactionId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.rows, forKey: .rows)
        try container.encode(self.journalTransactionId, forKey: .journalTransactionId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case rows
        case journalTransactionId
    }
}