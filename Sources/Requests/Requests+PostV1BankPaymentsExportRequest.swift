import Foundation

extension Requests {
    public struct PostV1BankPaymentsExportRequest: Codable, Hashable, Sendable {
        public let bankAccountId: String
        public let purchaseInvoiceIds: [String]
        public let executionDate: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            bankAccountId: String,
            purchaseInvoiceIds: [String],
            executionDate: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.bankAccountId = bankAccountId
            self.purchaseInvoiceIds = purchaseInvoiceIds
            self.executionDate = executionDate
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.bankAccountId = try container.decode(String.self, forKey: .bankAccountId)
            self.purchaseInvoiceIds = try container.decode([String].self, forKey: .purchaseInvoiceIds)
            self.executionDate = try container.decodeIfPresent(String.self, forKey: .executionDate)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.bankAccountId, forKey: .bankAccountId)
            try container.encode(self.purchaseInvoiceIds, forKey: .purchaseInvoiceIds)
            try container.encodeIfPresent(self.executionDate, forKey: .executionDate)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case bankAccountId
            case purchaseInvoiceIds
            case executionDate
        }
    }
}