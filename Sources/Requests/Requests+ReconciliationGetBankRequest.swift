import Foundation

extension Requests {
    public struct ReconciliationGetBankRequest: Codable, Hashable, Sendable {
        public let bankAccountId: String
        public let date: CalendarDate
        public let statementBalance: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            bankAccountId: String,
            date: CalendarDate,
            statementBalance: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.bankAccountId = bankAccountId
            self.date = date
            self.statementBalance = statementBalance
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.bankAccountId = try container.decode(String.self, forKey: .bankAccountId)
            self.date = try container.decode(CalendarDate.self, forKey: .date)
            self.statementBalance = try container.decodeIfPresent(String.self, forKey: .statementBalance)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.bankAccountId, forKey: .bankAccountId)
            try container.encode(self.date, forKey: .date)
            try container.encodeIfPresent(self.statementBalance, forKey: .statementBalance)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case bankAccountId
            case date
            case statementBalance
        }
    }
}