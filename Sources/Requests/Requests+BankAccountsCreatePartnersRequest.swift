import Foundation

extension Requests {
    public struct BankAccountsCreatePartnersRequest: Codable, Hashable, Sendable {
        public let iban: String?
        /// Sort code, routing number or other national bank code, for an account without an IBAN
        public let bankCode: String?
        /// Account number, for an account without an IBAN
        public let bankAccountNumber: String?
        /// Checking or savings account; a US ACH file needs it
        public let accountType: BankAccountsCreatePartnersRequestAccountType?
        public let bankName: String?
        public let bic: String?
        /// Defaults to the company's base currency
        public let currency: String?
        public let isDefault: Bool?
        public let partnerId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            iban: String? = nil,
            bankCode: String? = nil,
            bankAccountNumber: String? = nil,
            accountType: BankAccountsCreatePartnersRequestAccountType? = nil,
            bankName: String? = nil,
            bic: String? = nil,
            currency: String? = nil,
            isDefault: Bool? = nil,
            partnerId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.iban = iban
            self.bankCode = bankCode
            self.bankAccountNumber = bankAccountNumber
            self.accountType = accountType
            self.bankName = bankName
            self.bic = bic
            self.currency = currency
            self.isDefault = isDefault
            self.partnerId = partnerId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.iban = try container.decodeIfPresent(String.self, forKey: .iban)
            self.bankCode = try container.decodeIfPresent(String.self, forKey: .bankCode)
            self.bankAccountNumber = try container.decodeIfPresent(String.self, forKey: .bankAccountNumber)
            self.accountType = try container.decodeIfPresent(BankAccountsCreatePartnersRequestAccountType.self, forKey: .accountType)
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
            try container.encodeIfPresent(self.iban, forKey: .iban)
            try container.encodeIfPresent(self.bankCode, forKey: .bankCode)
            try container.encodeIfPresent(self.bankAccountNumber, forKey: .bankAccountNumber)
            try container.encodeIfPresent(self.accountType, forKey: .accountType)
            try container.encodeIfPresent(self.bankName, forKey: .bankName)
            try container.encodeIfPresent(self.bic, forKey: .bic)
            try container.encodeIfPresent(self.currency, forKey: .currency)
            try container.encodeIfPresent(self.isDefault, forKey: .isDefault)
            try container.encode(self.partnerId, forKey: .partnerId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case iban
            case bankCode
            case bankAccountNumber
            case accountType
            case bankName
            case bic
            case currency
            case isDefault
            case partnerId
        }
    }
}