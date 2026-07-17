import Foundation

public struct PostV1ReportsStockShortageResponseRowsItem: Codable, Hashable, Sendable {
    public let itemId: String
    public let itemName: String
    public let warehouseId: String
    public let onHand: String
    public let reserved: String
    public let shortage: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        itemId: String,
        itemName: String,
        warehouseId: String,
        onHand: String,
        reserved: String,
        shortage: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.itemId = itemId
        self.itemName = itemName
        self.warehouseId = warehouseId
        self.onHand = onHand
        self.reserved = reserved
        self.shortage = shortage
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.itemId = try container.decode(String.self, forKey: .itemId)
        self.itemName = try container.decode(String.self, forKey: .itemName)
        self.warehouseId = try container.decode(String.self, forKey: .warehouseId)
        self.onHand = try container.decode(String.self, forKey: .onHand)
        self.reserved = try container.decode(String.self, forKey: .reserved)
        self.shortage = try container.decode(String.self, forKey: .shortage)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.itemId, forKey: .itemId)
        try container.encode(self.itemName, forKey: .itemName)
        try container.encode(self.warehouseId, forKey: .warehouseId)
        try container.encode(self.onHand, forKey: .onHand)
        try container.encode(self.reserved, forKey: .reserved)
        try container.encode(self.shortage, forKey: .shortage)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case itemId
        case itemName
        case warehouseId
        case onHand
        case reserved
        case shortage
    }
}