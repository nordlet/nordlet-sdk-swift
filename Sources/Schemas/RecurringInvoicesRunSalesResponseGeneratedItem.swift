import Foundation

public struct RecurringInvoicesRunSalesResponseGeneratedItem: Codable, Hashable, Sendable {
    public let recurringInvoiceId: String
    public let invoiceId: String
    public let issueDate: CalendarDate
    public let issued: Bool
    public let sent: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        recurringInvoiceId: String,
        invoiceId: String,
        issueDate: CalendarDate,
        issued: Bool,
        sent: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.recurringInvoiceId = recurringInvoiceId
        self.invoiceId = invoiceId
        self.issueDate = issueDate
        self.issued = issued
        self.sent = sent
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.recurringInvoiceId = try container.decode(String.self, forKey: .recurringInvoiceId)
        self.invoiceId = try container.decode(String.self, forKey: .invoiceId)
        self.issueDate = try container.decode(CalendarDate.self, forKey: .issueDate)
        self.issued = try container.decode(Bool.self, forKey: .issued)
        self.sent = try container.decode(Bool.self, forKey: .sent)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.recurringInvoiceId, forKey: .recurringInvoiceId)
        try container.encode(self.invoiceId, forKey: .invoiceId)
        try container.encode(self.issueDate, forKey: .issueDate)
        try container.encode(self.issued, forKey: .issued)
        try container.encode(self.sent, forKey: .sent)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case recurringInvoiceId
        case invoiceId
        case issueDate
        case issued
        case sent
    }
}