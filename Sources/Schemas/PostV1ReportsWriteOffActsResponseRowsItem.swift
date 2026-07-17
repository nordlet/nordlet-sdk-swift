import Foundation

public struct PostV1ReportsWriteOffActsResponseRowsItem: Codable, Hashable, Sendable {
    public let movementId: String
    public let date: String
    public let documentType: String
    public let itemName: String
    public let warehouseCode: String
    public let quantity: String
    public let totalCost: String
    public let notes: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        movementId: String,
        date: String,
        documentType: String,
        itemName: String,
        warehouseCode: String,
        quantity: String,
        totalCost: String,
        notes: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.movementId = movementId
        self.date = date
        self.documentType = documentType
        self.itemName = itemName
        self.warehouseCode = warehouseCode
        self.quantity = quantity
        self.totalCost = totalCost
        self.notes = notes
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.movementId = try container.decode(String.self, forKey: .movementId)
        self.date = try container.decode(String.self, forKey: .date)
        self.documentType = try container.decode(String.self, forKey: .documentType)
        self.itemName = try container.decode(String.self, forKey: .itemName)
        self.warehouseCode = try container.decode(String.self, forKey: .warehouseCode)
        self.quantity = try container.decode(String.self, forKey: .quantity)
        self.totalCost = try container.decode(String.self, forKey: .totalCost)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.movementId, forKey: .movementId)
        try container.encode(self.date, forKey: .date)
        try container.encode(self.documentType, forKey: .documentType)
        try container.encode(self.itemName, forKey: .itemName)
        try container.encode(self.warehouseCode, forKey: .warehouseCode)
        try container.encode(self.quantity, forKey: .quantity)
        try container.encode(self.totalCost, forKey: .totalCost)
        try container.encode(self.notes, forKey: .notes)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case movementId
        case date
        case documentType
        case itemName
        case warehouseCode
        case quantity
        case totalCost
        case notes
    }
}