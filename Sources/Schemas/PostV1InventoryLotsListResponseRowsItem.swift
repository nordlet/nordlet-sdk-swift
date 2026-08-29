import Foundation

public struct PostV1InventoryLotsListResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let itemId: String
    public let lotNumber: String
    public let expiryDate: Nullable<String>
    public let notes: Nullable<String>
    public let onHand: String
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        itemId: String,
        lotNumber: String,
        expiryDate: Nullable<String>,
        notes: Nullable<String>,
        onHand: String,
        createdAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.itemId = itemId
        self.lotNumber = lotNumber
        self.expiryDate = expiryDate
        self.notes = notes
        self.onHand = onHand
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.itemId = try container.decode(String.self, forKey: .itemId)
        self.lotNumber = try container.decode(String.self, forKey: .lotNumber)
        self.expiryDate = try container.decode(Nullable<String>.self, forKey: .expiryDate)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.onHand = try container.decode(String.self, forKey: .onHand)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.itemId, forKey: .itemId)
        try container.encode(self.lotNumber, forKey: .lotNumber)
        try container.encode(self.expiryDate, forKey: .expiryDate)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.onHand, forKey: .onHand)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case itemId
        case lotNumber
        case expiryDate
        case notes
        case onHand
        case createdAt
    }
}