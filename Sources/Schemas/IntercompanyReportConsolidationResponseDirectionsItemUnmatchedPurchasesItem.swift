import Foundation

public struct IntercompanyReportConsolidationResponseDirectionsItemUnmatchedPurchasesItem: Codable, Hashable, Sendable {
    public let invoiceId: String
    public let documentNumber: String
    public let documentDate: CalendarDate
    public let currency: String
    public let grossTotal: String
    public let status: IntercompanyReportConsolidationResponseDirectionsItemUnmatchedPurchasesItemStatus
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        invoiceId: String,
        documentNumber: String,
        documentDate: CalendarDate,
        currency: String,
        grossTotal: String,
        status: IntercompanyReportConsolidationResponseDirectionsItemUnmatchedPurchasesItemStatus,
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
        self.documentDate = try container.decode(CalendarDate.self, forKey: .documentDate)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.grossTotal = try container.decode(String.self, forKey: .grossTotal)
        self.status = try container.decode(IntercompanyReportConsolidationResponseDirectionsItemUnmatchedPurchasesItemStatus.self, forKey: .status)
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