import Foundation

extension Requests {
    public struct PostV1BankTransactionsMatchRequest: Codable, Hashable, Sendable {
        public let transactionId: String
        public let documentType: PostV1BankTransactionsMatchRequestDocumentType
        public let documentId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            transactionId: String,
            documentType: PostV1BankTransactionsMatchRequestDocumentType,
            documentId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.transactionId = transactionId
            self.documentType = documentType
            self.documentId = documentId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.transactionId = try container.decode(String.self, forKey: .transactionId)
            self.documentType = try container.decode(PostV1BankTransactionsMatchRequestDocumentType.self, forKey: .documentType)
            self.documentId = try container.decode(String.self, forKey: .documentId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.transactionId, forKey: .transactionId)
            try container.encode(self.documentType, forKey: .documentType)
            try container.encode(self.documentId, forKey: .documentId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case transactionId
            case documentType
            case documentId
        }
    }
}