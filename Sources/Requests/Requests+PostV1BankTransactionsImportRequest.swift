import Foundation

extension Requests {
    public struct PostV1BankTransactionsImportRequest: Codable, Hashable, Sendable {
        public let bankAccountId: String
        public let transactions: [PostV1BankTransactionsImportRequestTransactionsItem]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            bankAccountId: String,
            transactions: [PostV1BankTransactionsImportRequestTransactionsItem],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.bankAccountId = bankAccountId
            self.transactions = transactions
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.bankAccountId = try container.decode(String.self, forKey: .bankAccountId)
            self.transactions = try container.decode([PostV1BankTransactionsImportRequestTransactionsItem].self, forKey: .transactions)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.bankAccountId, forKey: .bankAccountId)
            try container.encode(self.transactions, forKey: .transactions)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case bankAccountId
            case transactions
        }
    }
}