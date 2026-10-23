import Foundation

extension Requests {
    public struct RecurringInvoicesUpdateSalesRequest: Codable, Hashable, Sendable {
        public let id: String
        public let templateId: String?
        public let partnerId: String?
        public let frequency: RecurringInvoicesUpdateSalesRequestFrequency?
        public let interval: Int64?
        public let startDate: CalendarDate?
        public let endDate: Nullable<CalendarDate>?
        public let nextRunDate: CalendarDate?
        public let status: RecurringInvoicesUpdateSalesRequestStatus?
        public let locale: Nullable<RecurringInvoicesUpdateSalesRequestLocale>?
        public let autoIssue: Bool?
        public let autoSend: Bool?
        public let sendTo: Nullable<String>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            templateId: String? = nil,
            partnerId: String? = nil,
            frequency: RecurringInvoicesUpdateSalesRequestFrequency? = nil,
            interval: Int64? = nil,
            startDate: CalendarDate? = nil,
            endDate: Nullable<CalendarDate>? = nil,
            nextRunDate: CalendarDate? = nil,
            status: RecurringInvoicesUpdateSalesRequestStatus? = nil,
            locale: Nullable<RecurringInvoicesUpdateSalesRequestLocale>? = nil,
            autoIssue: Bool? = nil,
            autoSend: Bool? = nil,
            sendTo: Nullable<String>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.templateId = templateId
            self.partnerId = partnerId
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
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.templateId = try container.decodeIfPresent(String.self, forKey: .templateId)
            self.partnerId = try container.decodeIfPresent(String.self, forKey: .partnerId)
            self.frequency = try container.decodeIfPresent(RecurringInvoicesUpdateSalesRequestFrequency.self, forKey: .frequency)
            self.interval = try container.decodeIfPresent(Int64.self, forKey: .interval)
            self.startDate = try container.decodeIfPresent(CalendarDate.self, forKey: .startDate)
            self.endDate = try container.decodeNullableIfPresent(CalendarDate.self, forKey: .endDate)
            self.nextRunDate = try container.decodeIfPresent(CalendarDate.self, forKey: .nextRunDate)
            self.status = try container.decodeIfPresent(RecurringInvoicesUpdateSalesRequestStatus.self, forKey: .status)
            self.locale = try container.decodeNullableIfPresent(RecurringInvoicesUpdateSalesRequestLocale.self, forKey: .locale)
            self.autoIssue = try container.decodeIfPresent(Bool.self, forKey: .autoIssue)
            self.autoSend = try container.decodeIfPresent(Bool.self, forKey: .autoSend)
            self.sendTo = try container.decodeNullableIfPresent(String.self, forKey: .sendTo)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.templateId, forKey: .templateId)
            try container.encodeIfPresent(self.partnerId, forKey: .partnerId)
            try container.encodeIfPresent(self.frequency, forKey: .frequency)
            try container.encodeIfPresent(self.interval, forKey: .interval)
            try container.encodeIfPresent(self.startDate, forKey: .startDate)
            try container.encodeNullableIfPresent(self.endDate, forKey: .endDate)
            try container.encodeIfPresent(self.nextRunDate, forKey: .nextRunDate)
            try container.encodeIfPresent(self.status, forKey: .status)
            try container.encodeNullableIfPresent(self.locale, forKey: .locale)
            try container.encodeIfPresent(self.autoIssue, forKey: .autoIssue)
            try container.encodeIfPresent(self.autoSend, forKey: .autoSend)
            try container.encodeNullableIfPresent(self.sendTo, forKey: .sendTo)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case templateId
            case partnerId
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
        }
    }
}