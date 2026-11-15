import Foundation

extension Requests {
    public struct AccrualsCreateLedgerRequest: Codable, Hashable, Sendable {
        public let date: CalendarDate
        public let reason: String
        public let lines: [AccrualsCreateLedgerRequestLinesItem]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            date: CalendarDate,
            reason: String,
            lines: [AccrualsCreateLedgerRequestLinesItem],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.date = date
            self.reason = reason
            self.lines = lines
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.date = try container.decode(CalendarDate.self, forKey: .date)
            self.reason = try container.decode(String.self, forKey: .reason)
            self.lines = try container.decode([AccrualsCreateLedgerRequestLinesItem].self, forKey: .lines)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.date, forKey: .date)
            try container.encode(self.reason, forKey: .reason)
            try container.encode(self.lines, forKey: .lines)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case date
            case reason
            case lines
        }
    }
}