import Foundation

extension Requests {
    public struct TransactionsImportBankRequest: Codable, Hashable, Sendable {
        public let bankAccountId: String
        public let transactions: [TransactionsImportBankRequestTransactionsItem]
        public let openingBalance: String?
        public let closingBalance: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            bankAccountId: String,
            transactions: [TransactionsImportBankRequestTransactionsItem],
            openingBalance: String? = nil,
            closingBalance: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.bankAccountId = bankAccountId
            self.transactions = transactions
            self.openingBalance = openingBalance
            self.closingBalance = closingBalance
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.bankAccountId = try container.decode(String.self, forKey: .bankAccountId)
            self.transactions = try container.decode([TransactionsImportBankRequestTransactionsItem].self, forKey: .transactions)
            self.openingBalance = try container.decodeIfPresent(String.self, forKey: .openingBalance)
            self.closingBalance = try container.decodeIfPresent(String.self, forKey: .closingBalance)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.bankAccountId, forKey: .bankAccountId)
            try container.encode(self.transactions, forKey: .transactions)
            try container.encodeIfPresent(self.openingBalance, forKey: .openingBalance)
            try container.encodeIfPresent(self.closingBalance, forKey: .closingBalance)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case bankAccountId
            case transactions
            case openingBalance
            case closingBalance
        }
    }
}