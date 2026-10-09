import Foundation

extension Requests {
    public struct ShiftsClosePosRequest: Codable, Hashable, Sendable {
        public let id: String
        public let countedCash: String
        public let date: CalendarDate?
        public let reportNumber: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            countedCash: String,
            date: CalendarDate? = nil,
            reportNumber: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.countedCash = countedCash
            self.date = date
            self.reportNumber = reportNumber
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.countedCash = try container.decode(String.self, forKey: .countedCash)
            self.date = try container.decodeIfPresent(CalendarDate.self, forKey: .date)
            self.reportNumber = try container.decodeIfPresent(String.self, forKey: .reportNumber)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encode(self.countedCash, forKey: .countedCash)
            try container.encodeIfPresent(self.date, forKey: .date)
            try container.encodeIfPresent(self.reportNumber, forKey: .reportNumber)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case countedCash
            case date
            case reportNumber
        }
    }
}