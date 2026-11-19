import Foundation

public struct AccountsUpdateBankResponse: Codable, Hashable, Sendable {
    public let id: String
    public let name: String
    public let type: AccountsUpdateBankResponseType
    public let iban: Nullable<String>
    public let bankCode: Nullable<String>
    public let bankAccountNumber: Nullable<String>
    public let paymentFileSettings: AccountsUpdateBankResponsePaymentFileSettings
    public let currency: String
    public let accountCode: String
    public let isActive: Bool
    public let createdAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        name: String,
        type: AccountsUpdateBankResponseType,
        iban: Nullable<String>,
        bankCode: Nullable<String>,
        bankAccountNumber: Nullable<String>,
        paymentFileSettings: AccountsUpdateBankResponsePaymentFileSettings,
        currency: String,
        accountCode: String,
        isActive: Bool,
        createdAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.name = name
        self.type = type
        self.iban = iban
        self.bankCode = bankCode
        self.bankAccountNumber = bankAccountNumber
        self.paymentFileSettings = paymentFileSettings
        self.currency = currency
        self.accountCode = accountCode
        self.isActive = isActive
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.type = try container.decode(AccountsUpdateBankResponseType.self, forKey: .type)
        self.iban = try container.decode(Nullable<String>.self, forKey: .iban)
        self.bankCode = try container.decode(Nullable<String>.self, forKey: .bankCode)
        self.bankAccountNumber = try container.decode(Nullable<String>.self, forKey: .bankAccountNumber)
        self.paymentFileSettings = try container.decode(AccountsUpdateBankResponsePaymentFileSettings.self, forKey: .paymentFileSettings)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.accountCode = try container.decode(String.self, forKey: .accountCode)
        self.isActive = try container.decode(Bool.self, forKey: .isActive)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.type, forKey: .type)
        try container.encode(self.iban, forKey: .iban)
        try container.encode(self.bankCode, forKey: .bankCode)
        try container.encode(self.bankAccountNumber, forKey: .bankAccountNumber)
        try container.encode(self.paymentFileSettings, forKey: .paymentFileSettings)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.accountCode, forKey: .accountCode)
        try container.encode(self.isActive, forKey: .isActive)
        try container.encode(self.createdAt, forKey: .createdAt)
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
        case currency
        case accountCode
        case isActive
        case createdAt
    }
}