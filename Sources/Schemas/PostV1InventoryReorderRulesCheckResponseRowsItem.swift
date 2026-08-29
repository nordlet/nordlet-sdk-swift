import Foundation

public struct PostV1InventoryReorderRulesCheckResponseRowsItem: Codable, Hashable, Sendable {
    public let ruleId: String
    public let itemId: String
    public let warehouseId: Nullable<String>
    public let minQty: String
    public let reorderQty: Nullable<String>
    public let onHand: String
    public let reserved: String
    public let available: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        ruleId: String,
        itemId: String,
        warehouseId: Nullable<String>,
        minQty: String,
        reorderQty: Nullable<String>,
        onHand: String,
        reserved: String,
        available: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.ruleId = ruleId
        self.itemId = itemId
        self.warehouseId = warehouseId
        self.minQty = minQty
        self.reorderQty = reorderQty
        self.onHand = onHand
        self.reserved = reserved
        self.available = available
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.ruleId = try container.decode(String.self, forKey: .ruleId)
        self.itemId = try container.decode(String.self, forKey: .itemId)
        self.warehouseId = try container.decode(Nullable<String>.self, forKey: .warehouseId)
        self.minQty = try container.decode(String.self, forKey: .minQty)
        self.reorderQty = try container.decode(Nullable<String>.self, forKey: .reorderQty)
        self.onHand = try container.decode(String.self, forKey: .onHand)
        self.reserved = try container.decode(String.self, forKey: .reserved)
        self.available = try container.decode(String.self, forKey: .available)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.ruleId, forKey: .ruleId)
        try container.encode(self.itemId, forKey: .itemId)
        try container.encode(self.warehouseId, forKey: .warehouseId)
        try container.encode(self.minQty, forKey: .minQty)
        try container.encode(self.reorderQty, forKey: .reorderQty)
        try container.encode(self.onHand, forKey: .onHand)
        try container.encode(self.reserved, forKey: .reserved)
        try container.encode(self.available, forKey: .available)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case ruleId
        case itemId
        case warehouseId
        case minQty
        case reorderQty
        case onHand
        case reserved
        case available
    }
}