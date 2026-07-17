import Foundation

public struct PostV1DeclarationsLtSaftGenerateResponseCounts: Codable, Hashable, Sendable {
    public let accounts: Int64
    public let customers: Int64
    public let suppliers: Int64
    public let glTransactions: Int64
    public let salesInvoices: Int64
    public let purchaseInvoices: Int64
    public let payments: Int64
    public let stockMovements: Int64
    public let assetTransactions: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        accounts: Int64,
        customers: Int64,
        suppliers: Int64,
        glTransactions: Int64,
        salesInvoices: Int64,
        purchaseInvoices: Int64,
        payments: Int64,
        stockMovements: Int64,
        assetTransactions: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.accounts = accounts
        self.customers = customers
        self.suppliers = suppliers
        self.glTransactions = glTransactions
        self.salesInvoices = salesInvoices
        self.purchaseInvoices = purchaseInvoices
        self.payments = payments
        self.stockMovements = stockMovements
        self.assetTransactions = assetTransactions
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.accounts = try container.decode(Int64.self, forKey: .accounts)
        self.customers = try container.decode(Int64.self, forKey: .customers)
        self.suppliers = try container.decode(Int64.self, forKey: .suppliers)
        self.glTransactions = try container.decode(Int64.self, forKey: .glTransactions)
        self.salesInvoices = try container.decode(Int64.self, forKey: .salesInvoices)
        self.purchaseInvoices = try container.decode(Int64.self, forKey: .purchaseInvoices)
        self.payments = try container.decode(Int64.self, forKey: .payments)
        self.stockMovements = try container.decode(Int64.self, forKey: .stockMovements)
        self.assetTransactions = try container.decode(Int64.self, forKey: .assetTransactions)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.accounts, forKey: .accounts)
        try container.encode(self.customers, forKey: .customers)
        try container.encode(self.suppliers, forKey: .suppliers)
        try container.encode(self.glTransactions, forKey: .glTransactions)
        try container.encode(self.salesInvoices, forKey: .salesInvoices)
        try container.encode(self.purchaseInvoices, forKey: .purchaseInvoices)
        try container.encode(self.payments, forKey: .payments)
        try container.encode(self.stockMovements, forKey: .stockMovements)
        try container.encode(self.assetTransactions, forKey: .assetTransactions)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case accounts
        case customers
        case suppliers
        case glTransactions
        case salesInvoices
        case purchaseInvoices
        case payments
        case stockMovements
        case assetTransactions
    }
}