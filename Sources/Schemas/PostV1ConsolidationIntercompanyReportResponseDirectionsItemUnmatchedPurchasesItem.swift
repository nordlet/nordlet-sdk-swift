import Foundation

public struct PostV1ConsolidationIntercompanyReportResponseDirectionsItemUnmatchedPurchasesItem: Codable, Hashable, Sendable {
    public let invoiceId: String
    public let documentNumber: String
    public let documentDate: String
    public let currency: String
    public let grossTotal: String
    public let status: PostV1ConsolidationIntercompanyReportResponseDirectionsItemUnmatchedPurchasesItemStatus
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        invoiceId: String,
        documentNumber: String,
        documentDate: String,
        currency: String,
        grossTotal: String,
        status: PostV1ConsolidationIntercompanyReportResponseDirectionsItemUnmatchedPurchasesItemStatus,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.invoiceId = invoiceId
        self.documentNumber = documentNumber
        self.documentDate = documentDate
        self.currency = currency
        self.grossTotal = grossTotal
        self.status = status
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.invoiceId = try container.decode(String.self, forKey: .invoiceId)
        self.documentNumber = try container.decode(String.self, forKey: .documentNumber)
        self.documentDate = try container.decode(String.self, forKey: .documentDate)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.grossTotal = try container.decode(String.self, forKey: .grossTotal)
        self.status = try container.decode(PostV1ConsolidationIntercompanyReportResponseDirectionsItemUnmatchedPurchasesItemStatus.self, forKey: .status)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.invoiceId, forKey: .invoiceId)
        try container.encode(self.documentNumber, forKey: .documentNumber)
        try container.encode(self.documentDate, forKey: .documentDate)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.grossTotal, forKey: .grossTotal)
        try container.encode(self.status, forKey: .status)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case invoiceId
        case documentNumber
        case documentDate
        case currency
        case grossTotal
        case status
    }
}