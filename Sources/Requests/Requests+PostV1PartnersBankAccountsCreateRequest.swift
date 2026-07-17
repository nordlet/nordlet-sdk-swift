import Foundation

extension Requests {
    public struct PostV1PartnersBankAccountsCreateRequest: Codable, Hashable, Sendable {
        public let iban: String
        public let bankName: String?
        public let bic: String?
        public let currency: String?
        public let isDefault: Bool?
        public let partnerId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            iban: String,
            bankName: String? = nil,
            bic: String? = nil,
            currency: String? = nil,
            isDefault: Bool? = nil,
            partnerId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.iban = iban
            self.bankName = bankName
            self.bic = bic
            self.currency = currency
            self.isDefault = isDefault
            self.partnerId = partnerId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.iban = try container.decode(String.self, forKey: .iban)
            self.bankName = try container.decodeIfPresent(String.self, forKey: .bankName)
            self.bic = try container.decodeIfPresent(String.self, forKey: .bic)
            self.currency = try container.decodeIfPresent(String.self, forKey: .currency)
            self.isDefault = try container.decodeIfPresent(Bool.self, forKey: .isDefault)
            self.partnerId = try container.decode(String.self, forKey: .partnerId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.iban, forKey: .iban)
            try container.encodeIfPresent(self.bankName, forKey: .bankName)
            try container.encodeIfPresent(self.bic, forKey: .bic)
            try container.encodeIfPresent(self.currency, forKey: .currency)
            try container.encodeIfPresent(self.isDefault, forKey: .isDefault)
            try container.encode(self.partnerId, forKey: .partnerId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case iban
            case bankName
            case bic
            case currency
            case isDefault
            case partnerId
        }
    }
}