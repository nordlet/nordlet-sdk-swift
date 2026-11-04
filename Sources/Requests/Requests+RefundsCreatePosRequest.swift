import Foundation

extension Requests {
    public struct RefundsCreatePosRequest: Codable, Hashable, Sendable {
        public let shiftId: String
        public let receiptId: String
        public let date: CalendarDate?
        public let lines: [RefundsCreatePosRequestLinesItem]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            shiftId: String,
            receiptId: String,
            date: CalendarDate? = nil,
            lines: [RefundsCreatePosRequestLinesItem],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.shiftId = shiftId
            self.receiptId = receiptId
            self.date = date
            self.lines = lines
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.shiftId = try container.decode(String.self, forKey: .shiftId)
            self.receiptId = try container.decode(String.self, forKey: .receiptId)
            self.date = try container.decodeIfPresent(CalendarDate.self, forKey: .date)
            self.lines = try container.decode([RefundsCreatePosRequestLinesItem].self, forKey: .lines)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.shiftId, forKey: .shiftId)
            try container.encode(self.receiptId, forKey: .receiptId)
            try container.encodeIfPresent(self.date, forKey: .date)
            try container.encode(self.lines, forKey: .lines)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case shiftId
            case receiptId
            case date
            case lines
        }
    }
}