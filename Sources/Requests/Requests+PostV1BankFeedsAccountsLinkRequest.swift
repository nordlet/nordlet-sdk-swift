import Foundation

extension Requests {
    public struct PostV1BankFeedsAccountsLinkRequest: Codable, Hashable, Sendable {
        public let id: String
        public let bankAccountId: String?
        public let createBankAccount: PostV1BankFeedsAccountsLinkRequestCreateBankAccount?
        public let syncFrom: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            bankAccountId: String? = nil,
            createBankAccount: PostV1BankFeedsAccountsLinkRequestCreateBankAccount? = nil,
            syncFrom: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.bankAccountId = bankAccountId
            self.createBankAccount = createBankAccount
            self.syncFrom = syncFrom
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.bankAccountId = try container.decodeIfPresent(String.self, forKey: .bankAccountId)
            self.createBankAccount = try container.decodeIfPresent(PostV1BankFeedsAccountsLinkRequestCreateBankAccount.self, forKey: .createBankAccount)
            self.syncFrom = try container.decodeIfPresent(String.self, forKey: .syncFrom)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.bankAccountId, forKey: .bankAccountId)
            try container.encodeIfPresent(self.createBankAccount, forKey: .createBankAccount)
            try container.encodeIfPresent(self.syncFrom, forKey: .syncFrom)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case bankAccountId
            case createBankAccount
            case syncFrom
        }
    }
}