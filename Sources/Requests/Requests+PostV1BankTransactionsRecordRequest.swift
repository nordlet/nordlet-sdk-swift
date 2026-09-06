import Foundation

extension Requests {
    public struct PostV1BankTransactionsRecordRequest: Codable, Hashable, Sendable {
        public let bankAccountId: String
        public let date: String
        public let amount: String
        public let description: String?
        public let documentType: PostV1BankTransactionsRecordRequestDocumentType
        public let documentId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            bankAccountId: String,
            date: String,
            amount: String,
            description: String? = nil,
            documentType: PostV1BankTransactionsRecordRequestDocumentType,
            documentId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.bankAccountId = bankAccountId
            self.date = date
            self.amount = amount
            self.description = description
            self.documentType = documentType
            self.documentId = documentId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.bankAccountId = try container.decode(String.self, forKey: .bankAccountId)
            self.date = try container.decode(String.self, forKey: .date)
            self.amount = try container.decode(String.self, forKey: .amount)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.documentType = try container.decode(PostV1BankTransactionsRecordRequestDocumentType.self, forKey: .documentType)
            self.documentId = try container.decode(String.self, forKey: .documentId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.bankAccountId, forKey: .bankAccountId)
            try container.encode(self.date, forKey: .date)
            try container.encode(self.amount, forKey: .amount)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encode(self.documentType, forKey: .documentType)
            try container.encode(self.documentId, forKey: .documentId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case bankAccountId
            case date
            case amount
            case description
            case documentType
            case documentId
        }
    }
}