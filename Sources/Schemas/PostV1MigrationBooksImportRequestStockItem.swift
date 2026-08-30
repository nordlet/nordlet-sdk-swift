import Foundation

public struct PostV1MigrationBooksImportRequestStockItem: Codable, Hashable, Sendable {
    public let warehouseCode: String?
    public let itemCode: String
    public let quantity: String
    public let unitCost: String
    public let lotNumber: String?
    public let expiryDate: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        warehouseCode: String? = nil,
        itemCode: String,
        quantity: String,
        unitCost: String,
        lotNumber: String? = nil,
        expiryDate: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.warehouseCode = warehouseCode
        self.itemCode = itemCode
        self.quantity = quantity
        self.unitCost = unitCost
        self.lotNumber = lotNumber
        self.expiryDate = expiryDate
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.warehouseCode = try container.decodeIfPresent(String.self, forKey: .warehouseCode)
        self.itemCode = try container.decode(String.self, forKey: .itemCode)
        self.quantity = try container.decode(String.self, forKey: .quantity)
        self.unitCost = try container.decode(String.self, forKey: .unitCost)
        self.lotNumber = try container.decodeIfPresent(String.self, forKey: .lotNumber)
        self.expiryDate = try container.decodeIfPresent(String.self, forKey: .expiryDate)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.warehouseCode, forKey: .warehouseCode)
        try container.encode(self.itemCode, forKey: .itemCode)
        try container.encode(self.quantity, forKey: .quantity)
        try container.encode(self.unitCost, forKey: .unitCost)
        try container.encodeIfPresent(self.lotNumber, forKey: .lotNumber)
        try container.encodeIfPresent(self.expiryDate, forKey: .expiryDate)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case warehouseCode
        case itemCode
        case quantity
        case unitCost
        case lotNumber
        case expiryDate
    }
}