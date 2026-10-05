import Foundation

extension Requests {
    public struct TransactionsMatchBankRequest: Codable, Hashable, Sendable {
        public let transactionId: String
        public let documentType: TransactionsMatchBankRequestDocumentType
        public let documentId: String
        public let invoiceAmount: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            transactionId: String,
            documentType: TransactionsMatchBankRequestDocumentType,
            documentId: String,
            invoiceAmount: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.transactionId = transactionId
            self.documentType = documentType
            self.documentId = documentId
            self.invoiceAmount = invoiceAmount
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.transactionId = try container.decode(String.self, forKey: .transactionId)
            self.documentType = try container.decode(TransactionsMatchBankRequestDocumentType.self, forKey: .documentType)
            self.documentId = try container.decode(String.self, forKey: .documentId)
            self.invoiceAmount = try container.decodeIfPresent(String.self, forKey: .invoiceAmount)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.transactionId, forKey: .transactionId)
            try container.encode(self.documentType, forKey: .documentType)
            try container.encode(self.documentId, forKey: .documentId)
            try container.encodeIfPresent(self.invoiceAmount, forKey: .invoiceAmount)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case transactionId
            case documentType
            case documentId
            case invoiceAmount
        }
    }
}