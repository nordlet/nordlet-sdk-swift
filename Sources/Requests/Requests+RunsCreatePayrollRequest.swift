import Foundation

extension Requests {
    public struct RunsCreatePayrollRequest: Codable, Hashable, Sendable {
        public let frequency: RunsCreatePayrollRequestFrequency?
        public let year: Int64?
        public let month: Int64?
        public let periodStart: CalendarDate?
        public let includeNatura: Bool?
        public let grossOverrides: [RunsCreatePayrollRequestGrossOverridesItem]?
        public let lines: [RunsCreatePayrollRequestLinesItem]?
        public let notes: String?
        public let payDate: CalendarDate?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            frequency: RunsCreatePayrollRequestFrequency? = nil,
            year: Int64? = nil,
            month: Int64? = nil,
            periodStart: CalendarDate? = nil,
            includeNatura: Bool? = nil,
            grossOverrides: [RunsCreatePayrollRequestGrossOverridesItem]? = nil,
            lines: [RunsCreatePayrollRequestLinesItem]? = nil,
            notes: String? = nil,
            payDate: CalendarDate? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.frequency = frequency
            self.year = year
            self.month = month
            self.periodStart = periodStart
            self.includeNatura = includeNatura
            self.grossOverrides = grossOverrides
            self.lines = lines
            self.notes = notes
            self.payDate = payDate
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.frequency = try container.decodeIfPresent(RunsCreatePayrollRequestFrequency.self, forKey: .frequency)
            self.year = try container.decodeIfPresent(Int64.self, forKey: .year)
            self.month = try container.decodeIfPresent(Int64.self, forKey: .month)
            self.periodStart = try container.decodeIfPresent(CalendarDate.self, forKey: .periodStart)
            self.includeNatura = try container.decodeIfPresent(Bool.self, forKey: .includeNatura)
            self.grossOverrides = try container.decodeIfPresent([RunsCreatePayrollRequestGrossOverridesItem].self, forKey: .grossOverrides)
            self.lines = try container.decodeIfPresent([RunsCreatePayrollRequestLinesItem].self, forKey: .lines)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.payDate = try container.decodeIfPresent(CalendarDate.self, forKey: .payDate)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.frequency, forKey: .frequency)
            try container.encodeIfPresent(self.year, forKey: .year)
            try container.encodeIfPresent(self.month, forKey: .month)
            try container.encodeIfPresent(self.periodStart, forKey: .periodStart)
            try container.encodeIfPresent(self.includeNatura, forKey: .includeNatura)
            try container.encodeIfPresent(self.grossOverrides, forKey: .grossOverrides)
            try container.encodeIfPresent(self.lines, forKey: .lines)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encodeIfPresent(self.payDate, forKey: .payDate)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case frequency
            case year
            case month
            case periodStart
            case includeNatura
            case grossOverrides
            case lines
            case notes
            case payDate
        }
    }
}