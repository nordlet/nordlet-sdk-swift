import Foundation

extension Requests {
    public struct JournalTemplatesPostLedgerRequest: Codable, Hashable, Sendable {
        public let id: String
        public let date: CalendarDate
        public let description: String?
        public let amounts: [String]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            date: CalendarDate,
            description: String? = nil,
            amounts: [String],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.date = date
            self.description = description
            self.amounts = amounts
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.date = try container.decode(CalendarDate.self, forKey: .date)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.amounts = try container.decode([String].self, forKey: .amounts)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encode(self.date, forKey: .date)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encode(self.amounts, forKey: .amounts)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case date
            case description
            case amounts
        }
    }
}