import Foundation

public struct PostV1ProductionOrdersCompleteResponse: Codable, Hashable, Sendable {
    public let id: String
    public let type: PostV1ProductionOrdersCompleteResponseType
    public let bomId: String
    public let warehouseId: String
    public let quantity: String
    public let date: String
    public let status: PostV1ProductionOrdersCompleteResponseStatus
    public let totalCost: Nullable<String>
    public let journalTransactionId: Nullable<String>
    public let notes: Nullable<String>
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        type: PostV1ProductionOrdersCompleteResponseType,
        bomId: String,
        warehouseId: String,
        quantity: String,
        date: String,
        status: PostV1ProductionOrdersCompleteResponseStatus,
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
        self.quantity = quantity
        self.date = date
        self.status = status
        self.totalCost = totalCost
        self.journalTransactionId = journalTransactionId
        self.notes = notes
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.type = try container.decode(PostV1ProductionOrdersCompleteResponseType.self, forKey: .type)
        self.bomId = try container.decode(String.self, forKey: .bomId)
        self.warehouseId = try container.decode(String.self, forKey: .warehouseId)
        self.quantity = try container.decode(String.self, forKey: .quantity)
        self.date = try container.decode(String.self, forKey: .date)
        self.status = try container.decode(PostV1ProductionOrdersCompleteResponseStatus.self, forKey: .status)
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
        try container.encode(self.quantity, forKey: .quantity)
        try container.encode(self.date, forKey: .date)
        try container.encode(self.status, forKey: .status)
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
        case quantity
        case date
        case status
        case totalCost
        case journalTransactionId
        case notes
        case createdAt
    }
}