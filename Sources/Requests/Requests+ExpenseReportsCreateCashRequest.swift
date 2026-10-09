import Foundation

extension Requests {
    public struct ExpenseReportsCreateCashRequest: Codable, Hashable, Sendable {
        public let employeeId: String
        public let date: CalendarDate
        public let notes: String?
        public let lines: [ExpenseReportsCreateCashRequestLinesItem]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            employeeId: String,
            date: CalendarDate,
            notes: String? = nil,
            lines: [ExpenseReportsCreateCashRequestLinesItem],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.employeeId = employeeId
            self.date = date
            self.notes = notes
            self.lines = lines
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.employeeId = try container.decode(String.self, forKey: .employeeId)
            self.date = try container.decode(CalendarDate.self, forKey: .date)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.lines = try container.decode([ExpenseReportsCreateCashRequestLinesItem].self, forKey: .lines)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.employeeId, forKey: .employeeId)
            try container.encode(self.date, forKey: .date)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encode(self.lines, forKey: .lines)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case employeeId
            case date
            case notes
            case lines
        }
    }
}