import Foundation

public struct InvoicesMatchPurchasesResponse: Codable, Hashable, Sendable {
    public let invoiceId: String
    public let orderId: String
    public let status: InvoicesMatchPurchasesResponseStatus
    public let rows: [InvoicesMatchPurchasesResponseRowsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        invoiceId: String,
        orderId: String,
        status: InvoicesMatchPurchasesResponseStatus,
        rows: [InvoicesMatchPurchasesResponseRowsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.invoiceId = invoiceId
        self.orderId = orderId
        self.status = status
        self.rows = rows
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.invoiceId = try container.decode(String.self, forKey: .invoiceId)
        self.orderId = try container.decode(String.self, forKey: .orderId)
        self.status = try container.decode(InvoicesMatchPurchasesResponseStatus.self, forKey: .status)
        self.rows = try container.decode([InvoicesMatchPurchasesResponseRowsItem].self, forKey: .rows)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.invoiceId, forKey: .invoiceId)
        try container.encode(self.orderId, forKey: .orderId)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.rows, forKey: .rows)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case invoiceId
        case orderId
        case status
        case rows
    }
}