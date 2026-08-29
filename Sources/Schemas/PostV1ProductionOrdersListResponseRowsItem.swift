import Foundation

public struct PostV1ProductionOrdersListResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let type: PostV1ProductionOrdersListResponseRowsItemType
    public let bomId: String
    public let warehouseId: String
    public let routingId: Nullable<String>
    public let quantity: String
    public let date: String
    public let status: PostV1ProductionOrdersListResponseRowsItemStatus
    public let scrappedQuantity: Nullable<String>
    public let materialCost: Nullable<String>
    public let laborCost: Nullable<String>
    public let scrapCost: Nullable<String>
    public let totalCost: Nullable<String>
    public let journalTransactionId: Nullable<String>
    public let notes: Nullable<String>
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        type: PostV1ProductionOrdersListResponseRowsItemType,
        bomId: String,
        warehouseId: String,
        routingId: Nullable<String>,
        quantity: String,
        date: String,
        status: PostV1ProductionOrdersListResponseRowsItemStatus,
        scrappedQuantity: Nullable<String>,
        materialCost: Nullable<String>,
        laborCost: Nullable<String>,
        scrapCost: Nullable<String>,
        totalCost: Nullable<String>,
        journalTransactionId: Nullable<String>,
        notes: Nullable<String>,
        createdAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.type = type
        self.bomId = bomId
        self.warehouseId = warehouseId
        self.routingId = routingId
        self.quantity = quantity
        self.date = date
        self.status = status
        self.scrappedQuantity = scrappedQuantity
        self.materialCost = materialCost
        self.laborCost = laborCost
        self.scrapCost = scrapCost
        self.totalCost = totalCost
        self.journalTransactionId = journalTransactionId
        self.notes = notes
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.type = try container.decode(PostV1ProductionOrdersListResponseRowsItemType.self, forKey: .type)
        self.bomId = try container.decode(String.self, forKey: .bomId)
        self.warehouseId = try container.decode(String.self, forKey: .warehouseId)
        self.routingId = try container.decode(Nullable<String>.self, forKey: .routingId)
        self.quantity = try container.decode(String.self, forKey: .quantity)
        self.date = try container.decode(String.self, forKey: .date)
        self.status = try container.decode(PostV1ProductionOrdersListResponseRowsItemStatus.self, forKey: .status)
        self.scrappedQuantity = try container.decode(Nullable<String>.self, forKey: .scrappedQuantity)
        self.materialCost = try container.decode(Nullable<String>.self, forKey: .materialCost)
        self.laborCost = try container.decode(Nullable<String>.self, forKey: .laborCost)
        self.scrapCost = try container.decode(Nullable<String>.self, forKey: .scrapCost)
        self.totalCost = try container.decode(Nullable<String>.self, forKey: .totalCost)
        self.journalTransactionId = try container.decode(Nullable<String>.self, forKey: .journalTransactionId)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.type, forKey: .type)
        try container.encode(self.bomId, forKey: .bomId)
        try container.encode(self.warehouseId, forKey: .warehouseId)
        try container.encode(self.routingId, forKey: .routingId)
        try container.encode(self.quantity, forKey: .quantity)
        try container.encode(self.date, forKey: .date)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.scrappedQuantity, forKey: .scrappedQuantity)
        try container.encode(self.materialCost, forKey: .materialCost)
        try container.encode(self.laborCost, forKey: .laborCost)
        try container.encode(self.scrapCost, forKey: .scrapCost)
        try container.encode(self.totalCost, forKey: .totalCost)
        try container.encode(self.journalTransactionId, forKey: .journalTransactionId)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case type
        case bomId
        case warehouseId
        case routingId
        case quantity
        case date
        case status
        case scrappedQuantity
        case materialCost
        case laborCost
        case scrapCost
        case totalCost
        case journalTransactionId
        case notes
        case createdAt
    }
}