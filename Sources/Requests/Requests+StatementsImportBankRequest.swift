import Foundation

extension Requests {
    public struct StatementsImportBankRequest: Codable, Hashable, Sendable {
        public let bankAccountId: String
        public let templateId: String?
        public let format: StatementsImportBankRequestFormat?
        public let content: String
        /// Stripe transfers export (plain CSV or base64) used to post lender payouts and commissions
        public let transfersCsv: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            bankAccountId: String,
            templateId: String? = nil,
            format: StatementsImportBankRequestFormat? = nil,
            content: String,
            transfersCsv: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.bankAccountId = bankAccountId
            self.templateId = templateId
            self.format = format
            self.content = content
            self.transfersCsv = transfersCsv
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.bankAccountId = try container.decode(String.self, forKey: .bankAccountId)
            self.templateId = try container.decodeIfPresent(String.self, forKey: .templateId)
            self.format = try container.decodeIfPresent(StatementsImportBankRequestFormat.self, forKey: .format)
            self.content = try container.decode(String.self, forKey: .content)
            self.transfersCsv = try container.decodeIfPresent(String.self, forKey: .transfersCsv)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.bankAccountId, forKey: .bankAccountId)
            try container.encodeIfPresent(self.templateId, forKey: .templateId)
            try container.encodeIfPresent(self.format, forKey: .format)
            try container.encode(self.content, forKey: .content)
            try container.encodeIfPresent(self.transfersCsv, forKey: .transfersCsv)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case bankAccountId
            case templateId
            case format
            case content
            case transfersCsv
        }
    }
}