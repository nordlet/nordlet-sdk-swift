import Foundation

public struct PostV1InventoryReorderRulesUpdateResponse: Codable, Hashable, Sendable {
    public let id: String
    public let itemId: String
    public let warehouseId: Nullable<String>
    public let minQty: String
    public let reorderQty: Nullable<String>
    public let isActive: Bool
    public let notes: Nullable<String>
    public let createdAt: String
    public let updatedAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        itemId: String,
        warehouseId: Nullable<String>,
        minQty: String,
        reorderQty: Nullable<String>,
        isActive: Bool,
        notes: Nullable<String>,
        createdAt: String,
        updatedAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.itemId = itemId
        self.warehouseId = warehouseId
        self.minQty = minQty
        self.reorderQty = reorderQty
        self.isActive = isActive
        self.notes = notes
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.itemId = try container.decode(String.self, forKey: .itemId)
        self.warehouseId = try container.decode(Nullable<String>.self, forKey: .warehouseId)
        self.minQty = try container.decode(String.self, forKey: .minQty)
        self.reorderQty = try container.decode(Nullable<String>.self, forKey: .reorderQty)
        self.isActive = try container.decode(Bool.self, forKey: .isActive)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.updatedAt = try container.decode(String.self, forKey: .updatedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.itemId, forKey: .itemId)
        try container.encode(self.warehouseId, forKey: .warehouseId)
        try container.encode(self.minQty, forKey: .minQty)
        try container.encode(self.reorderQty, forKey: .reorderQty)
        try container.encode(self.isActive, forKey: .isActive)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.updatedAt, forKey: .updatedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case itemId
        case warehouseId
        case minQty
        case reorderQty
        case isActive
        case notes
        case createdAt
        case updatedAt
    }
}