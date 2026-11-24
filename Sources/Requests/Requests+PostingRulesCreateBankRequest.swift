import Foundation

extension Requests {
    public struct PostingRulesCreateBankRequest: Codable, Hashable, Sendable {
        public let counterpartyContains: String?
        public let descriptionContains: String?
        public let accountCode: String
        public let partnerId: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            counterpartyContains: String? = nil,
            descriptionContains: String? = nil,
            accountCode: String,
            partnerId: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.counterpartyContains = counterpartyContains
            self.descriptionContains = descriptionContains
            self.accountCode = accountCode
            self.partnerId = partnerId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.counterpartyContains = try container.decodeIfPresent(String.self, forKey: .counterpartyContains)
            self.descriptionContains = try container.decodeIfPresent(String.self, forKey: .descriptionContains)
            self.accountCode = try container.decode(String.self, forKey: .accountCode)
            self.partnerId = try container.decodeIfPresent(String.self, forKey: .partnerId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.counterpartyContains, forKey: .counterpartyContains)
            try container.encodeIfPresent(self.descriptionContains, forKey: .descriptionContains)
            try container.encode(self.accountCode, forKey: .accountCode)
            try container.encodeIfPresent(self.partnerId, forKey: .partnerId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case counterpartyContains
            case descriptionContains
            case accountCode
            case partnerId
        }
    }
}