import Foundation

public struct ItemsUnitsCreateCatalogResponse: Codable, Hashable, Sendable {
    public let id: String
    public let itemId: String
    public let unitCode: String
    public let factor: String
    public let isDefaultSale: Bool
    public let isDefaultPurchase: Bool
    public let barcode: Nullable<String>
    public let createdAt: Date
    public let updatedAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        itemId: String,
        unitCode: String,
        factor: String,
        isDefaultSale: Bool,
        isDefaultPurchase: Bool,
        barcode: Nullable<String>,
        createdAt: Date,
        updatedAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.itemId = itemId
        self.unitCode = unitCode
        self.factor = factor
        self.isDefaultSale = isDefaultSale
        self.isDefaultPurchase = isDefaultPurchase
        self.barcode = barcode
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.itemId = try container.decode(String.self, forKey: .itemId)
        self.unitCode = try container.decode(String.self, forKey: .unitCode)
        self.factor = try container.decode(String.self, forKey: .factor)
        self.isDefaultSale = try container.decode(Bool.self, forKey: .isDefaultSale)
        self.isDefaultPurchase = try container.decode(Bool.self, forKey: .isDefaultPurchase)
        self.barcode = try container.decode(Nullable<String>.self, forKey: .barcode)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.updatedAt = try container.decode(Date.self, forKey: .updatedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.itemId, forKey: .itemId)
        try container.encode(self.unitCode, forKey: .unitCode)
        try container.encode(self.factor, forKey: .factor)
        try container.encode(self.isDefaultSale, forKey: .isDefaultSale)
        try container.encode(self.isDefaultPurchase, forKey: .isDefaultPurchase)
        try container.encode(self.barcode, forKey: .barcode)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.updatedAt, forKey: .updatedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case itemId
        case unitCode
        case factor
        case isDefaultSale
        case isDefaultPurchase
        case barcode
        case createdAt
        case updatedAt
    }
}