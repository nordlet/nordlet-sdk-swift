import Foundation

public struct PostV1CatalogItemsSuppliersListResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let itemId: String
    public let partnerId: String
    public let partnerName: String
    public let supplierCode: Nullable<String>
    public let purchasePriceExclVat: Nullable<String>
    public let currency: String
    public let notes: Nullable<String>
    public let updatedAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        itemId: String,
        partnerId: String,
        partnerName: String,
        supplierCode: Nullable<String>,
        purchasePriceExclVat: Nullable<String>,
        currency: String,
        notes: Nullable<String>,
        updatedAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.itemId = itemId
        self.partnerId = partnerId
        self.partnerName = partnerName
        self.supplierCode = supplierCode
        self.purchasePriceExclVat = purchasePriceExclVat
        self.currency = currency
        self.notes = notes
        self.updatedAt = updatedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.itemId = try container.decode(String.self, forKey: .itemId)
        self.partnerId = try container.decode(String.self, forKey: .partnerId)
        self.partnerName = try container.decode(String.self, forKey: .partnerName)
        self.supplierCode = try container.decode(Nullable<String>.self, forKey: .supplierCode)
        self.purchasePriceExclVat = try container.decode(Nullable<String>.self, forKey: .purchasePriceExclVat)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.updatedAt = try container.decode(String.self, forKey: .updatedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.itemId, forKey: .itemId)
        try container.encode(self.partnerId, forKey: .partnerId)
        try container.encode(self.partnerName, forKey: .partnerName)
        try container.encode(self.supplierCode, forKey: .supplierCode)
        try container.encode(self.purchasePriceExclVat, forKey: .purchasePriceExclVat)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.updatedAt, forKey: .updatedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case itemId
        case partnerId
        case partnerName
        case supplierCode
        case purchasePriceExclVat
        case currency
        case notes
        case updatedAt
    }
}