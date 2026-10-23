import Foundation

extension Requests {
    public struct RecurringInvoicesCreateSalesRequest: Codable, Hashable, Sendable {
        public let templateId: String
        public let partnerId: String?
        public let frequency: RecurringInvoicesCreateSalesRequestFrequency?
        public let interval: Int64?
        public let startDate: CalendarDate
        public let endDate: Nullable<CalendarDate>?
        public let locale: Nullable<RecurringInvoicesCreateSalesRequestLocale>?
        public let autoIssue: Bool?
        public let autoSend: Bool?
        public let sendTo: Nullable<String>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            templateId: String,
            partnerId: String? = nil,
            frequency: RecurringInvoicesCreateSalesRequestFrequency? = nil,
            interval: Int64? = nil,
            startDate: CalendarDate,
            endDate: Nullable<CalendarDate>? = nil,
            locale: Nullable<RecurringInvoicesCreateSalesRequestLocale>? = nil,
            autoIssue: Bool? = nil,
            autoSend: Bool? = nil,
            sendTo: Nullable<String>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.templateId = templateId
            self.partnerId = partnerId
            self.frequency = frequency
            self.interval = interval
            self.startDate = startDate
            self.endDate = endDate
            self.locale = locale
            self.autoIssue = autoIssue
            self.autoSend = autoSend
            self.sendTo = sendTo
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.templateId = try container.decode(String.self, forKey: .templateId)
            self.partnerId = try container.decodeIfPresent(String.self, forKey: .partnerId)
            self.frequency = try container.decodeIfPresent(RecurringInvoicesCreateSalesRequestFrequency.self, forKey: .frequency)
            self.interval = try container.decodeIfPresent(Int64.self, forKey: .interval)
            self.startDate = try container.decode(CalendarDate.self, forKey: .startDate)
            self.endDate = try container.decodeNullableIfPresent(CalendarDate.self, forKey: .endDate)
            self.locale = try container.decodeNullableIfPresent(RecurringInvoicesCreateSalesRequestLocale.self, forKey: .locale)
            self.autoIssue = try container.decodeIfPresent(Bool.self, forKey: .autoIssue)
            self.autoSend = try container.decodeIfPresent(Bool.self, forKey: .autoSend)
            self.sendTo = try container.decodeNullableIfPresent(String.self, forKey: .sendTo)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.templateId, forKey: .templateId)
            try container.encodeIfPresent(self.partnerId, forKey: .partnerId)
            try container.encodeIfPresent(self.frequency, forKey: .frequency)
            try container.encodeIfPresent(self.interval, forKey: .interval)
            try container.encode(self.startDate, forKey: .startDate)
            try container.encodeNullableIfPresent(self.endDate, forKey: .endDate)
            try container.encodeNullableIfPresent(self.locale, forKey: .locale)
            try container.encodeIfPresent(self.autoIssue, forKey: .autoIssue)
            try container.encodeIfPresent(self.autoSend, forKey: .autoSend)
            try container.encodeNullableIfPresent(self.sendTo, forKey: .sendTo)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case templateId
            case partnerId
            case frequency
            case interval
            case startDate
            case endDate
            case locale
            case autoIssue
            case autoSend
            case sendTo
        }
    }
}