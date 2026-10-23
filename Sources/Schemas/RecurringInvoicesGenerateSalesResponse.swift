import Foundation

public struct RecurringInvoicesGenerateSalesResponse: Codable, Hashable, Sendable {
    public let invoiceId: String
    public let issueDate: CalendarDate
    public let issued: Bool
    public let sent: Bool
    public let error: Nullable<String>
    public let recurringInvoice: RecurringInvoicesGenerateSalesResponseRecurringInvoice
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        invoiceId: String,
        issueDate: CalendarDate,
        issued: Bool,
        sent: Bool,
        error: Nullable<String>,
        recurringInvoice: RecurringInvoicesGenerateSalesResponseRecurringInvoice,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.invoiceId = invoiceId
        self.issueDate = issueDate
        self.issued = issued
        self.sent = sent
        self.error = error
        self.recurringInvoice = recurringInvoice
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.invoiceId = try container.decode(String.self, forKey: .invoiceId)
        self.issueDate = try container.decode(CalendarDate.self, forKey: .issueDate)
        self.issued = try container.decode(Bool.self, forKey: .issued)
        self.sent = try container.decode(Bool.self, forKey: .sent)
        self.error = try container.decode(Nullable<String>.self, forKey: .error)
        self.recurringInvoice = try container.decode(RecurringInvoicesGenerateSalesResponseRecurringInvoice.self, forKey: .recurringInvoice)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.invoiceId, forKey: .invoiceId)
        try container.encode(self.issueDate, forKey: .issueDate)
        try container.encode(self.issued, forKey: .issued)
        try container.encode(self.sent, forKey: .sent)
        try container.encode(self.error, forKey: .error)
        try container.encode(self.recurringInvoice, forKey: .recurringInvoice)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case invoiceId
        case issueDate
        case issued
        case sent
        case error
        case recurringInvoice
    }
}