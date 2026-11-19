import Foundation

extension Requests {
    public struct AccountsUpdateBankRequest: Codable, Hashable, Sendable {
        public let id: String
        public let name: String?
        public let type: AccountsUpdateBankRequestType?
        public let iban: String?
        /// Sort code, routing number or other national bank code, for an account without an IBAN
        public let bankCode: String?
        /// Account number, for an account without an IBAN
        public let bankAccountNumber: String?
        /// What the bank gave the company for payment files from this account: the Bacs service user number for a UK account, the ACH Immediate Origin and Company Identification for a US account
        public let paymentFileSettings: AccountsUpdateBankRequestPaymentFileSettings?
        public let accountCode: String?
        public let isActive: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            name: String? = nil,
            type: AccountsUpdateBankRequestType? = nil,
            iban: String? = nil,
            bankCode: String? = nil,
            bankAccountNumber: String? = nil,
            paymentFileSettings: AccountsUpdateBankRequestPaymentFileSettings? = nil,
            accountCode: String? = nil,
            isActive: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.name = name
            self.type = type
            self.iban = iban
            self.bankCode = bankCode
            self.bankAccountNumber = bankAccountNumber
            self.paymentFileSettings = paymentFileSettings
            self.accountCode = accountCode
            self.isActive = isActive
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.type = try container.decodeIfPresent(AccountsUpdateBankRequestType.self, forKey: .type)
            self.iban = try container.decodeIfPresent(String.self, forKey: .iban)
            self.bankCode = try container.decodeIfPresent(String.self, forKey: .bankCode)
            self.bankAccountNumber = try container.decodeIfPresent(String.self, forKey: .bankAccountNumber)
            self.paymentFileSettings = try container.decodeIfPresent(AccountsUpdateBankRequestPaymentFileSettings.self, forKey: .paymentFileSettings)
            self.accountCode = try container.decodeIfPresent(String.self, forKey: .accountCode)
            self.isActive = try container.decodeIfPresent(Bool.self, forKey: .isActive)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.type, forKey: .type)
            try container.encodeIfPresent(self.iban, forKey: .iban)
            try container.encodeIfPresent(self.bankCode, forKey: .bankCode)
            try container.encodeIfPresent(self.bankAccountNumber, forKey: .bankAccountNumber)
            try container.encodeIfPresent(self.paymentFileSettings, forKey: .paymentFileSettings)
            try container.encodeIfPresent(self.accountCode, forKey: .accountCode)
            try container.encodeIfPresent(self.isActive, forKey: .isActive)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case name
            case type
            case iban
            case bankCode
            case bankAccountNumber
            case paymentFileSettings
            case accountCode
            case isActive
        }
    }
}