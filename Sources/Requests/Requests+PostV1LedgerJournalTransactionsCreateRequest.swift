import Foundation

extension Requests {
    public struct PostV1LedgerJournalTransactionsCreateRequest: Codable, Hashable, Sendable {
        public let date: String
        public let description: String?
        public let entries: [PostV1LedgerJournalTransactionsCreateRequestEntriesItem]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            date: String,
            description: String? = nil,
            entries: [PostV1LedgerJournalTransactionsCreateRequestEntriesItem],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.date = date
            self.description = description
            self.entries = entries
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.date = try container.decode(String.self, forKey: .date)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.entries = try container.decode([PostV1LedgerJournalTransactionsCreateRequestEntriesItem].self, forKey: .entries)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.date, forKey: .date)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encode(self.entries, forKey: .entries)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case date
            case description
            case entries
        }
    }
}