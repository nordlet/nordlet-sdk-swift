import Foundation

public struct PostV1PurchasesInvoicesMatchResponseRowsItem: Codable, Hashable, Sendable {
    public let itemId: Nullable<String>
    public let description: String
    public let orderedQty: String
    public let receivedQty: String
    public let invoicedQty: String
    public let orderedUnitPrice: Nullable<String>
    public let invoicedUnitPrice: Nullable<String>
    public let priceVariancePercent: Nullable<String>
    public let status: PostV1PurchasesInvoicesMatchResponseRowsItemStatus
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        itemId: Nullable<String>,
        description: String,
        orderedQty: String,
        receivedQty: String,
        invoicedQty: String,
        orderedUnitPrice: Nullable<String>,
        invoicedUnitPrice: Nullable<String>,
        priceVariancePercent: Nullable<String>,
        status: PostV1PurchasesInvoicesMatchResponseRowsItemStatus,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.itemId = itemId
        self.description = description
        self.orderedQty = orderedQty
        self.receivedQty = receivedQty
        self.invoicedQty = invoicedQty
        self.orderedUnitPrice = orderedUnitPrice
        self.invoicedUnitPrice = invoicedUnitPrice
        self.priceVariancePercent = priceVariancePercent
        self.status = status
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.itemId = try container.decode(Nullable<String>.self, forKey: .itemId)
        self.description = try container.decode(String.self, forKey: .description)
        self.orderedQty = try container.decode(String.self, forKey: .orderedQty)
        self.receivedQty = try container.decode(String.self, forKey: .receivedQty)
        self.invoicedQty = try container.decode(String.self, forKey: .invoicedQty)
        self.orderedUnitPrice = try container.decode(Nullable<String>.self, forKey: .orderedUnitPrice)
        self.invoicedUnitPrice = try container.decode(Nullable<String>.self, forKey: .invoicedUnitPrice)
        self.priceVariancePercent = try container.decode(Nullable<String>.self, forKey: .priceVariancePercent)
        self.status = try container.decode(PostV1PurchasesInvoicesMatchResponseRowsItemStatus.self, forKey: .status)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.itemId, forKey: .itemId)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.orderedQty, forKey: .orderedQty)
        try container.encode(self.receivedQty, forKey: .receivedQty)
        try container.encode(self.invoicedQty, forKey: .invoicedQty)
        try container.encode(self.orderedUnitPrice, forKey: .orderedUnitPrice)
        try container.encode(self.invoicedUnitPrice, forKey: .invoicedUnitPrice)
        try container.encode(self.priceVariancePercent, forKey: .priceVariancePercent)
        try container.encode(self.status, forKey: .status)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case itemId
        case description
        case orderedQty
        case receivedQty
        case invoicedQty
        case orderedUnitPrice
        case invoicedUnitPrice
        case priceVariancePercent
        case status
    }
}