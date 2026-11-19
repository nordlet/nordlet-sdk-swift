import Foundation

extension Requests {
    public struct AccountsCreateBankRequest: Codable, Hashable, Sendable {
        public let name: String
        public let type: AccountsCreateBankRequestType?
        public let iban: String?
        /// Sort code, routing number or other national bank code, for an account without an IBAN
        public let bankCode: String?
        /// Account number, for an account without an IBAN
        public let bankAccountNumber: String?
        /// What the bank gave the company for payment files from this account: the Bacs service user number for a UK account, the ACH Immediate Origin and Company Identification for a US account
        public let paymentFileSettings: AccountsCreateBankRequestPaymentFileSettings?
        public let currency: String?
        public let accountCode: String?
        public let documentRef: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            name: String,
            type: AccountsCreateBankRequestType? = nil,
            iban: String? = nil,
            bankCode: String? = nil,
            bankAccountNumber: String? = nil,
            paymentFileSettings: AccountsCreateBankRequestPaymentFileSettings? = nil,
            currency: String? = nil,
            accountCode: String? = nil,
            documentRef: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.name = name
            self.type = type
            self.iban = iban
            self.bankCode = bankCode
            self.bankAccountNumber = bankAccountNumber
            self.paymentFileSettings = paymentFileSettings
            self.currency = currency
            self.accountCode = accountCode
            self.documentRef = documentRef
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.name = try container.decode(String.self, forKey: .name)
            self.type = try container.decodeIfPresent(AccountsCreateBankRequestType.self, forKey: .type)
            self.iban = try container.decodeIfPresent(String.self, forKey: .iban)
            self.bankCode = try container.decodeIfPresent(String.self, forKey: .bankCode)
            self.bankAccountNumber = try container.decodeIfPresent(String.self, forKey: .bankAccountNumber)
            self.paymentFileSettings = try container.decodeIfPresent(AccountsCreateBankRequestPaymentFileSettings.self, forKey: .paymentFileSettings)
            self.currency = try container.decodeIfPresent(String.self, forKey: .currency)
            self.accountCode = try container.decodeIfPresent(String.self, forKey: .accountCode)
            self.documentRef = try container.decodeIfPresent(String.self, forKey: .documentRef)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.name, forKey: .name)
            try container.encodeIfPresent(self.type, forKey: .type)
            try container.encodeIfPresent(self.iban, forKey: .iban)
            try container.encodeIfPresent(self.bankCode, forKey: .bankCode)
            try container.encodeIfPresent(self.bankAccountNumber, forKey: .bankAccountNumber)
            try container.encodeIfPresent(self.paymentFileSettings, forKey: .paymentFileSettings)
            try container.encodeIfPresent(self.currency, forKey: .currency)
            try container.encodeIfPresent(self.accountCode, forKey: .accountCode)
            try container.encodeIfPresent(self.documentRef, forKey: .documentRef)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case name
            case type
            case iban
            case bankCode
            case bankAccountNumber
            case paymentFileSettings
            case currency
            case accountCode
            case documentRef
        }
    }
}