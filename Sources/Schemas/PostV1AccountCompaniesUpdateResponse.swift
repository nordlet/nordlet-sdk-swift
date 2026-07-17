import Foundation

public struct PostV1AccountCompaniesUpdateResponse: Codable, Hashable, Sendable {
    public let id: String
    public let name: String
    public let code: Nullable<String>
    public let vatCode: Nullable<String>
    public let isVatPayer: Bool
    public let isSandbox: Bool
    public let countryCode: String
    public let baseCurrency: String
    public let defaultInvoiceCurrency: String
    public let status: PostV1AccountCompaniesUpdateResponseStatus
    public let address: Nullable<PostV1AccountCompaniesUpdateResponseAddress>
    public let email: Nullable<String>
    public let phone: Nullable<String>
    public let iban: Nullable<String>
    public let bankName: Nullable<String>
    public let peppolId: Nullable<String>
    public let logoFileId: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        name: String,
        code: Nullable<String>,
        vatCode: Nullable<String>,
        isVatPayer: Bool,
        isSandbox: Bool,
        countryCode: String,
        baseCurrency: String,
        defaultInvoiceCurrency: String,
        status: PostV1AccountCompaniesUpdateResponseStatus,
        address: Nullable<PostV1AccountCompaniesUpdateResponseAddress>,
        email: Nullable<String>,
        phone: Nullable<String>,
        iban: Nullable<String>,
        bankName: Nullable<String>,
        peppolId: Nullable<String>,
        logoFileId: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.name = name
        self.code = code
        self.vatCode = vatCode
        self.isVatPayer = isVatPayer
        self.isSandbox = isSandbox
        self.countryCode = countryCode
        self.baseCurrency = baseCurrency
        self.defaultInvoiceCurrency = defaultInvoiceCurrency
        self.status = status
        self.address = address
        self.email = email
        self.phone = phone
        self.iban = iban
        self.bankName = bankName
        self.peppolId = peppolId
        self.logoFileId = logoFileId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.code = try container.decode(Nullable<String>.self, forKey: .code)
        self.vatCode = try container.decode(Nullable<String>.self, forKey: .vatCode)
        self.isVatPayer = try container.decode(Bool.self, forKey: .isVatPayer)
        self.isSandbox = try container.decode(Bool.self, forKey: .isSandbox)
        self.countryCode = try container.decode(String.self, forKey: .countryCode)
        self.baseCurrency = try container.decode(String.self, forKey: .baseCurrency)
        self.defaultInvoiceCurrency = try container.decode(String.self, forKey: .defaultInvoiceCurrency)
        self.status = try container.decode(PostV1AccountCompaniesUpdateResponseStatus.self, forKey: .status)
        self.address = try container.decode(Nullable<PostV1AccountCompaniesUpdateResponseAddress>.self, forKey: .address)
        self.email = try container.decode(Nullable<String>.self, forKey: .email)
        self.phone = try container.decode(Nullable<String>.self, forKey: .phone)
        self.iban = try container.decode(Nullable<String>.self, forKey: .iban)
        self.bankName = try container.decode(Nullable<String>.self, forKey: .bankName)
        self.peppolId = try container.decode(Nullable<String>.self, forKey: .peppolId)
        self.logoFileId = try container.decode(Nullable<String>.self, forKey: .logoFileId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.vatCode, forKey: .vatCode)
        try container.encode(self.isVatPayer, forKey: .isVatPayer)
        try container.encode(self.isSandbox, forKey: .isSandbox)
        try container.encode(self.countryCode, forKey: .countryCode)
        try container.encode(self.baseCurrency, forKey: .baseCurrency)
        try container.encode(self.defaultInvoiceCurrency, forKey: .defaultInvoiceCurrency)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.address, forKey: .address)
        try container.encode(self.email, forKey: .email)
        try container.encode(self.phone, forKey: .phone)
        try container.encode(self.iban, forKey: .iban)
        try container.encode(self.bankName, forKey: .bankName)
        try container.encode(self.peppolId, forKey: .peppolId)
        try container.encode(self.logoFileId, forKey: .logoFileId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case code
        case vatCode
        case isVatPayer
        case isSandbox
        case countryCode
        case baseCurrency
        case defaultInvoiceCurrency
        case status
        case address
        case email
        case phone
        case iban
        case bankName
        case peppolId
        case logoFileId
    }
}