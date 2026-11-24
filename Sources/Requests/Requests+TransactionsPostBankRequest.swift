import Foundation

extension Requests {
    public struct TransactionsPostBankRequest: Codable, Hashable, Sendable {
        public let transactionId: String
        public let accountCode: String
        public let taxPaymentId: String?
        public let partnerId: String?
        public let costCenterId: String?
        public let projectId: String?
        public let description: String?
        public let vatClassifierCode: String?
        public let saveRule: TransactionsPostBankRequestSaveRule?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            transactionId: String,
            accountCode: String,
            taxPaymentId: String? = nil,
            partnerId: String? = nil,
            costCenterId: String? = nil,
            projectId: String? = nil,
            description: String? = nil,
            vatClassifierCode: String? = nil,
            saveRule: TransactionsPostBankRequestSaveRule? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.transactionId = transactionId
            self.accountCode = accountCode
            self.taxPaymentId = taxPaymentId
            self.partnerId = partnerId
            self.costCenterId = costCenterId
            self.projectId = projectId
            self.description = description
            self.vatClassifierCode = vatClassifierCode
            self.saveRule = saveRule
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.transactionId = try container.decode(String.self, forKey: .transactionId)
            self.accountCode = try container.decode(String.self, forKey: .accountCode)
            self.taxPaymentId = try container.decodeIfPresent(String.self, forKey: .taxPaymentId)
            self.partnerId = try container.decodeIfPresent(String.self, forKey: .partnerId)
            self.costCenterId = try container.decodeIfPresent(String.self, forKey: .costCenterId)
            self.projectId = try container.decodeIfPresent(String.self, forKey: .projectId)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.vatClassifierCode = try container.decodeIfPresent(String.self, forKey: .vatClassifierCode)
            self.saveRule = try container.decodeIfPresent(TransactionsPostBankRequestSaveRule.self, forKey: .saveRule)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.transactionId, forKey: .transactionId)
            try container.encode(self.accountCode, forKey: .accountCode)
            try container.encodeIfPresent(self.taxPaymentId, forKey: .taxPaymentId)
            try container.encodeIfPresent(self.partnerId, forKey: .partnerId)
            try container.encodeIfPresent(self.costCenterId, forKey: .costCenterId)
            try container.encodeIfPresent(self.projectId, forKey: .projectId)
            try container.encodeIfPresent(self.description, forKey: .description)
            try container.encodeIfPresent(self.vatClassifierCode, forKey: .vatClassifierCode)
            try container.encodeIfPresent(self.saveRule, forKey: .saveRule)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case transactionId
            case accountCode
            case taxPaymentId
            case partnerId
            case costCenterId
            case projectId
            case description
            case vatClassifierCode
            case saveRule
        }
    }
}