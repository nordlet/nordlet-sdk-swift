import Foundation

public struct PostV1InventoryStockMovementsListResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let warehouseId: String
    public let itemId: String
    public let date: String
    public let direction: PostV1InventoryStockMovementsListResponseRowsItemDirection
    public let quantity: String
    public let unitCost: Nullable<String>
    public let totalCost: String
    public let remainingQty: String
    public let documentType: Nullable<String>
    public let documentId: Nullable<String>
    public let notes: Nullable<String>
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        warehouseId: String,
        itemId: String,
        date: String,
        direction: PostV1InventoryStockMovementsListResponseRowsItemDirection,
        quantity: String,
        unitCost: Nullable<String>,
        totalCost: String,
        remainingQty: String,
        documentType: Nullable<String>,
        documentId: Nullable<String>,
        notes: Nullable<String>,
        createdAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.warehouseId = warehouseId
        self.itemId = itemId
        self.date = date
        self.direction = direction
        self.quantity = quantity
        self.unitCost = unitCost
        self.totalCost = totalCost
        self.remainingQty = remainingQty
        self.documentType = documentType
        self.documentId = documentId
        self.notes = notes
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.warehouseId = try container.decode(String.self, forKey: .warehouseId)
        self.itemId = try container.decode(String.self, forKey: .itemId)
        self.date = try container.decode(String.self, forKey: .date)
        self.direction = try container.decode(PostV1InventoryStockMovementsListResponseRowsItemDirection.self, forKey: .direction)
        self.quantity = try container.decode(String.self, forKey: .quantity)
        self.unitCost = try container.decode(Nullable<String>.self, forKey: .unitCost)
        self.totalCost = try container.decode(String.self, forKey: .totalCost)
        self.remainingQty = try container.decode(String.self, forKey: .remainingQty)
        self.documentType = try container.decode(Nullable<String>.self, forKey: .documentType)
        self.documentId = try container.decode(Nullable<String>.self, forKey: .documentId)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.warehouseId, forKey: .warehouseId)
        try container.encode(self.itemId, forKey: .itemId)
        try container.encode(self.date, forKey: .date)
        try container.encode(self.direction, forKey: .direction)
        try container.encode(self.quantity, forKey: .quantity)
        try container.encode(self.unitCost, forKey: .unitCost)
        try container.encode(self.totalCost, forKey: .totalCost)
        try container.encode(self.remainingQty, forKey: .remainingQty)
        try container.encode(self.documentType, forKey: .documentType)
        try container.encode(self.documentId, forKey: .documentId)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case warehouseId
        case itemId
        case date
        case direction
        case quantity
        case unitCost
        case totalCost
        case remainingQty
        case documentType
        case documentId
        case notes
        case createdAt
    }
}