import Foundation

public struct RecurringInvoicesGenerateSalesResponseRecurringInvoice: Codable, Hashable, Sendable {
    public let id: String
    public let templateId: String
    public let templateName: Nullable<String>
    public let partnerId: String
    public let partnerName: Nullable<String>
    public let frequency: RecurringInvoicesGenerateSalesResponseRecurringInvoiceFrequency
    public let interval: Int64
    public let startDate: CalendarDate
    public let endDate: Nullable<CalendarDate>
    public let nextRunDate: CalendarDate
    public let status: RecurringInvoicesGenerateSalesResponseRecurringInvoiceStatus
    public let locale: Nullable<String>
    public let autoIssue: Bool
    public let autoSend: Bool
    public let sendTo: Nullable<String>
    public let occurrences: Int64
    public let lastRunAt: Nullable<Date>
    public let lastInvoiceId: Nullable<String>
    public let lastError: Nullable<String>
    public let createdAt: Date
    public let updatedAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        templateId: String,
        templateName: Nullable<String>,
        partnerId: String,
        partnerName: Nullable<String>,
        frequency: RecurringInvoicesGenerateSalesResponseRecurringInvoiceFrequency,
        interval: Int64,
        startDate: CalendarDate,
        endDate: Nullable<CalendarDate>,
        nextRunDate: CalendarDate,
        status: RecurringInvoicesGenerateSalesResponseRecurringInvoiceStatus,
        locale: Nullable<String>,
        autoIssue: Bool,
        autoSend: Bool,
        sendTo: Nullable<String>,
        occurrences: Int64,
        lastRunAt: Nullable<Date>,
        lastInvoiceId: Nullable<String>,
        lastError: Nullable<String>,
        createdAt: Date,
        updatedAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.templateId = templateId
        self.templateName = templateName
        self.partnerId = partnerId
        self.partnerName = partnerName
        self.frequency = frequency
        self.interval = interval
        self.startDate = startDate
        self.endDate = endDate
        self.nextRunDate = nextRunDate
        self.status = status
        self.locale = locale
        self.autoIssue = autoIssue
        self.autoSend = autoSend
        self.sendTo = sendTo
        self.occurrences = occurrences
        self.lastRunAt = lastRunAt
        self.lastInvoiceId = lastInvoiceId
        self.lastError = lastError
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.templateId = try container.decode(String.self, forKey: .templateId)
        self.templateName = try container.decode(Nullable<String>.self, forKey: .templateName)
        self.partnerId = try container.decode(String.self, forKey: .partnerId)
        self.partnerName = try container.decode(Nullable<String>.self, forKey: .partnerName)
        self.frequency = try container.decode(RecurringInvoicesGenerateSalesResponseRecurringInvoiceFrequency.self, forKey: .frequency)
        self.interval = try container.decode(Int64.self, forKey: .interval)
        self.startDate = try container.decode(CalendarDate.self, forKey: .startDate)
        self.endDate = try container.decode(Nullable<CalendarDate>.self, forKey: .endDate)
        self.nextRunDate = try container.decode(CalendarDate.self, forKey: .nextRunDate)
        self.status = try container.decode(RecurringInvoicesGenerateSalesResponseRecurringInvoiceStatus.self, forKey: .status)
        self.locale = try container.decode(Nullable<String>.self, forKey: .locale)
        self.autoIssue = try container.decode(Bool.self, forKey: .autoIssue)
        self.autoSend = try container.decode(Bool.self, forKey: .autoSend)
        self.sendTo = try container.decode(Nullable<String>.self, forKey: .sendTo)
        self.occurrences = try container.decode(Int64.self, forKey: .occurrences)
        self.lastRunAt = try container.decode(Nullable<Date>.self, forKey: .lastRunAt)
        self.lastInvoiceId = try container.decode(Nullable<String>.self, forKey: .lastInvoiceId)
        self.lastError = try container.decode(Nullable<String>.self, forKey: .lastError)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.updatedAt = try container.decode(Date.self, forKey: .updatedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.templateId, forKey: .templateId)
        try container.encode(self.templateName, forKey: .templateName)
        try container.encode(self.partnerId, forKey: .partnerId)
        try container.encode(self.partnerName, forKey: .partnerName)
        try container.encode(self.frequency, forKey: .frequency)
        try container.encode(self.interval, forKey: .interval)
        try container.encode(self.startDate, forKey: .startDate)
        try container.encode(self.endDate, forKey: .endDate)
        try container.encode(self.nextRunDate, forKey: .nextRunDate)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.locale, forKey: .locale)
        try container.encode(self.autoIssue, forKey: .autoIssue)
        try container.encode(self.autoSend, forKey: .autoSend)
        try container.encode(self.sendTo, forKey: .sendTo)
        try container.encode(self.occurrences, forKey: .occurrences)
        try container.encode(self.lastRunAt, forKey: .lastRunAt)
        try container.encode(self.lastInvoiceId, forKey: .lastInvoiceId)
        try container.encode(self.lastError, forKey: .lastError)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.updatedAt, forKey: .updatedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case templateId
        case templateName
        case partnerId
        case partnerName
        case frequency
        case interval
        case startDate
        case endDate
        case nextRunDate
        case status
        case locale
        case autoIssue
        case autoSend
        case sendTo
        case occurrences
        case lastRunAt
        case lastInvoiceId
        case lastError
        case createdAt
        case updatedAt
    }
}