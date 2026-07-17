import Foundation

public struct PostV1InventoryStockTakeResponseRowsItem: Codable, Hashable, Sendable {
    public let itemId: String
    public let onHand: String
    public let counted: String
    public let difference: String
    public let adjustmentCost: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        itemId: String,
        onHand: String,
        counted: String,
        difference: String,
        adjustmentCost: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.itemId = itemId
        self.onHand = onHand
        self.counted = counted
        self.difference = difference
        self.adjustmentCost = adjustmentCost
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.itemId = try container.decode(String.self, forKey: .itemId)
        self.onHand = try container.decode(String.self, forKey: .onHand)
        self.counted = try container.decode(String.self, forKey: .counted)
        self.difference = try container.decode(String.self, forKey: .difference)
        self.adjustmentCost = try container.decode(String.self, forKey: .adjustmentCost)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.itemId, forKey: .itemId)
        try container.encode(self.onHand, forKey: .onHand)
        try container.encode(self.counted, forKey: .counted)
        try container.encode(self.difference, forKey: .difference)
        try container.encode(self.adjustmentCost, forKey: .adjustmentCost)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case itemId
        case onHand
        case counted
        case difference
        case adjustmentCost
    }
}