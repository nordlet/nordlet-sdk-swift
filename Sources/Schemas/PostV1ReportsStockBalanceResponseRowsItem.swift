import Foundation

public struct PostV1ReportsStockBalanceResponseRowsItem: Codable, Hashable, Sendable {
    public let itemId: String
    public let itemName: String
    public let warehouseId: String
    public let quantity: String
    public let value: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        itemId: String,
        itemName: String,
        warehouseId: String,
        quantity: String,
        value: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.itemId = itemId
        self.itemName = itemName
        self.warehouseId = warehouseId
        self.quantity = quantity
        self.value = value
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.itemId = try container.decode(String.self, forKey: .itemId)
        self.itemName = try container.decode(String.self, forKey: .itemName)
        self.warehouseId = try container.decode(String.self, forKey: .warehouseId)
        self.quantity = try container.decode(String.self, forKey: .quantity)
        self.value = try container.decode(String.self, forKey: .value)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.itemId, forKey: .itemId)
        try container.encode(self.itemName, forKey: .itemName)
        try container.encode(self.warehouseId, forKey: .warehouseId)
        try container.encode(self.quantity, forKey: .quantity)
        try container.encode(self.value, forKey: .value)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case itemId
        case itemName
        case warehouseId
        case quantity
        case value
    }
}