import Foundation

extension Requests {
    public struct PostV1BankDirectDebitsExportRequest: Codable, Hashable, Sendable {
        public let bankAccountId: String
        public let saleInvoiceIds: [String]
        public let collectionDate: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            bankAccountId: String,
            saleInvoiceIds: [String],
            collectionDate: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.bankAccountId = bankAccountId
            self.saleInvoiceIds = saleInvoiceIds
            self.collectionDate = collectionDate
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.bankAccountId = try container.decode(String.self, forKey: .bankAccountId)
            self.saleInvoiceIds = try container.decode([String].self, forKey: .saleInvoiceIds)
            self.collectionDate = try container.decodeIfPresent(String.self, forKey: .collectionDate)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.bankAccountId, forKey: .bankAccountId)
            try container.encode(self.saleInvoiceIds, forKey: .saleInvoiceIds)
            try container.encodeIfPresent(self.collectionDate, forKey: .collectionDate)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case bankAccountId
            case saleInvoiceIds
            case collectionDate
        }
    }
}