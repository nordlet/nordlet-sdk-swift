import Foundation

public struct PostV1PurchasesReceiptsGetResponseLinesItem: Codable, Hashable, Sendable {
    public let id: String
    public let orderLineId: String
    public let itemId: Nullable<String>
    public let quantity: String
    public let unitCost: Nullable<String>
    public let stockMovementId: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        orderLineId: String,
        itemId: Nullable<String>,
        quantity: String,
        unitCost: Nullable<String>,
        stockMovementId: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.orderLineId = orderLineId
        self.itemId = itemId
        self.quantity = quantity
        self.unitCost = unitCost
        self.stockMovementId = stockMovementId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.orderLineId = try container.decode(String.self, forKey: .orderLineId)
        self.itemId = try container.decode(Nullable<String>.self, forKey: .itemId)
        self.quantity = try container.decode(String.self, forKey: .quantity)
        self.unitCost = try container.decode(Nullable<String>.self, forKey: .unitCost)
        self.stockMovementId = try container.decode(Nullable<String>.self, forKey: .stockMovementId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.orderLineId, forKey: .orderLineId)
        try container.encode(self.itemId, forKey: .itemId)
        try container.encode(self.quantity, forKey: .quantity)
        try container.encode(self.unitCost, forKey: .unitCost)
        try container.encode(self.stockMovementId, forKey: .stockMovementId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case orderLineId
        case itemId
        case quantity
        case unitCost
        case stockMovementId
    }
}