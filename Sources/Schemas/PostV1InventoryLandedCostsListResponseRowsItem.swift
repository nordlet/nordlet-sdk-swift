import Foundation

public struct PostV1InventoryLandedCostsListResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let date: String
    public let amount: String
    public let method: PostV1InventoryLandedCostsListResponseRowsItemMethod
    public let goodsReceiptId: Nullable<String>
    public let sourceInvoiceId: Nullable<String>
    public let notes: Nullable<String>
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        date: String,
        amount: String,
        method: PostV1InventoryLandedCostsListResponseRowsItemMethod,
        goodsReceiptId: Nullable<String>,
        sourceInvoiceId: Nullable<String>,
        notes: Nullable<String>,
        createdAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.date = date
        self.amount = amount
        self.method = method
        self.goodsReceiptId = goodsReceiptId
        self.sourceInvoiceId = sourceInvoiceId
        self.notes = notes
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.date = try container.decode(String.self, forKey: .date)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.method = try container.decode(PostV1InventoryLandedCostsListResponseRowsItemMethod.self, forKey: .method)
        self.goodsReceiptId = try container.decode(Nullable<String>.self, forKey: .goodsReceiptId)
        self.sourceInvoiceId = try container.decode(Nullable<String>.self, forKey: .sourceInvoiceId)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.date, forKey: .date)
        try container.encode(self.amount, forKey: .amount)
        try container.encode(self.method, forKey: .method)
        try container.encode(self.goodsReceiptId, forKey: .goodsReceiptId)
        try container.encode(self.sourceInvoiceId, forKey: .sourceInvoiceId)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case date
        case amount
        case method
        case goodsReceiptId
        case sourceInvoiceId
        case notes
        case createdAt
    }
}