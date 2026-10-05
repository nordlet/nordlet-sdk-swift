import Foundation

public struct CompaniesProfileAccountResponse: Codable, Hashable, Sendable {
    public let id: String
    public let name: String
    public let code: Nullable<String>
    public let vatCode: Nullable<String>
    public let smeExemptionNumber: Nullable<String>
    public let isVatPayer: Bool
    public let isSandbox: Bool
    public let countryCode: String
    /// Chart of accounts template the company was seeded with
    public let chartTemplate: String
    /// Chart of accounts template of the company country
    public let countryChartTemplate: String
    public let baseCurrency: String
    public let defaultInvoiceCurrency: String
    public let status: CompaniesProfileAccountResponseStatus
    public let address: Nullable<CompaniesProfileAccountResponseAddress>
    public let email: Nullable<String>
    public let phone: Nullable<String>
    public let iban: Nullable<String>
    public let bankName: Nullable<String>
    public let peppolId: Nullable<String>
    public let sepaCreditorId: Nullable<String>
    public let logoFileId: Nullable<String>
    public let legalForm: Nullable<String>
    public let registryName: Nullable<String>
    public let incorporatedOn: Nullable<String>
    public let shareCapital: Nullable<String>
    public let accountsKeptBy: Nullable<CompaniesProfileAccountResponseAccountsKeptBy>
    public let vatPeriod: Nullable<CompaniesProfileAccountResponseVatPeriod>
    public let fiscalYearEndMonth: Nullable<Int64>
    public let timeZone: String
    public let filingOptions: Nullable<[String: Nullable<String>]>
    public let bookkeeperName: Nullable<String>
    public let auditorName: Nullable<String>
    public let auditorRegistrationNumber: Nullable<String>
    public let auditRequired: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        name: String,
        code: Nullable<String>,
        vatCode: Nullable<String>,
        smeExemptionNumber: Nullable<String>,
        isVatPayer: Bool,
        isSandbox: Bool,
        countryCode: String,
        chartTemplate: String,
        countryChartTemplate: String,
        baseCurrency: String,
        defaultInvoiceCurrency: String,
        status: CompaniesProfileAccountResponseStatus,
        address: Nullable<CompaniesProfileAccountResponseAddress>,
        email: Nullable<String>,
        phone: Nullable<String>,
        iban: Nullable<String>,
        bankName: Nullable<String>,
        peppolId: Nullable<String>,
        sepaCreditorId: Nullable<String>,
        logoFileId: Nullable<String>,
        legalForm: Nullable<String>,
        registryName: Nullable<String>,
        incorporatedOn: Nullable<String>,
        shareCapital: Nullable<String>,
        accountsKeptBy: Nullable<CompaniesProfileAccountResponseAccountsKeptBy>,
        vatPeriod: Nullable<CompaniesProfileAccountResponseVatPeriod>,
        fiscalYearEndMonth: Nullable<Int64>,
        timeZone: String,
        filingOptions: Nullable<[String: Nullable<String>]>,
        bookkeeperName: Nullable<String>,
        auditorName: Nullable<String>,
        auditorRegistrationNumber: Nullable<String>,
        auditRequired: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.name = name
        self.code = code
        self.vatCode = vatCode
        self.smeExemptionNumber = smeExemptionNumber
        self.isVatPayer = isVatPayer
        self.isSandbox = isSandbox
        self.countryCode = countryCode
        self.chartTemplate = chartTemplate
        self.countryChartTemplate = countryChartTemplate
        self.baseCurrency = baseCurrency
        self.defaultInvoiceCurrency = defaultInvoiceCurrency
        self.status = status
        self.address = address
        self.email = email
        self.phone = phone
        self.iban = iban
        self.bankName = bankName
        self.peppolId = peppolId
        self.sepaCreditorId = sepaCreditorId
        self.logoFileId = logoFileId
        self.legalForm = legalForm
        self.registryName = registryName
        self.incorporatedOn = incorporatedOn
        self.shareCapital = shareCapital
        self.accountsKeptBy = accountsKeptBy
        self.vatPeriod = vatPeriod
        self.fiscalYearEndMonth = fiscalYearEndMonth
        self.timeZone = timeZone
        self.filingOptions = filingOptions
        self.bookkeeperName = bookkeeperName
        self.auditorName = auditorName
        self.auditorRegistrationNumber = auditorRegistrationNumber
        self.auditRequired = auditRequired
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.code = try container.decode(Nullable<String>.self, forKey: .code)
        self.vatCode = try container.decode(Nullable<String>.self, forKey: .vatCode)
        self.smeExemptionNumber = try container.decode(Nullable<String>.self, forKey: .smeExemptionNumber)
        self.isVatPayer = try container.decode(Bool.self, forKey: .isVatPayer)
        self.isSandbox = try container.decode(Bool.self, forKey: .isSandbox)
        self.countryCode = try container.decode(String.self, forKey: .countryCode)
        self.chartTemplate = try container.decode(String.self, forKey: .chartTemplate)
        self.countryChartTemplate = try container.decode(String.self, forKey: .countryChartTemplate)
        self.baseCurrency = try container.decode(String.self, forKey: .baseCurrency)
        self.defaultInvoiceCurrency = try container.decode(String.self, forKey: .defaultInvoiceCurrency)
        self.status = try container.decode(CompaniesProfileAccountResponseStatus.self, forKey: .status)
        self.address = try container.decode(Nullable<CompaniesProfileAccountResponseAddress>.self, forKey: .address)
        self.email = try container.decode(Nullable<String>.self, forKey: .email)
        self.phone = try container.decode(Nullable<String>.self, forKey: .phone)
        self.iban = try container.decode(Nullable<String>.self, forKey: .iban)
        self.bankName = try container.decode(Nullable<String>.self, forKey: .bankName)
        self.peppolId = try container.decode(Nullable<String>.self, forKey: .peppolId)
        self.sepaCreditorId = try container.decode(Nullable<String>.self, forKey: .sepaCreditorId)
        self.logoFileId = try container.decode(Nullable<String>.self, forKey: .logoFileId)
        self.legalForm = try container.decode(Nullable<String>.self, forKey: .legalForm)
        self.registryName = try container.decode(Nullable<String>.self, forKey: .registryName)
        self.incorporatedOn = try container.decode(Nullable<String>.self, forKey: .incorporatedOn)
        self.shareCapital = try container.decode(Nullable<String>.self, forKey: .shareCapital)
        self.accountsKeptBy = try container.decode(Nullable<CompaniesProfileAccountResponseAccountsKeptBy>.self, forKey: .accountsKeptBy)
        self.vatPeriod = try container.decode(Nullable<CompaniesProfileAccountResponseVatPeriod>.self, forKey: .vatPeriod)
        self.fiscalYearEndMonth = try container.decode(Nullable<Int64>.self, forKey: .fiscalYearEndMonth)
        self.timeZone = try container.decode(String.self, forKey: .timeZone)
        self.filingOptions = try container.decode(Nullable<[String: Nullable<String>]>.self, forKey: .filingOptions)
        self.bookkeeperName = try container.decode(Nullable<String>.self, forKey: .bookkeeperName)
        self.auditorName = try container.decode(Nullable<String>.self, forKey: .auditorName)
        self.auditorRegistrationNumber = try container.decode(Nullable<String>.self, forKey: .auditorRegistrationNumber)
        self.auditRequired = try container.decode(Bool.self, forKey: .auditRequired)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.vatCode, forKey: .vatCode)
        try container.encode(self.smeExemptionNumber, forKey: .smeExemptionNumber)
        try container.encode(self.isVatPayer, forKey: .isVatPayer)
        try container.encode(self.isSandbox, forKey: .isSandbox)
        try container.encode(self.countryCode, forKey: .countryCode)
        try container.encode(self.chartTemplate, forKey: .chartTemplate)
        try container.encode(self.countryChartTemplate, forKey: .countryChartTemplate)
        try container.encode(self.baseCurrency, forKey: .baseCurrency)
        try container.encode(self.defaultInvoiceCurrency, forKey: .defaultInvoiceCurrency)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.address, forKey: .address)
        try container.encode(self.email, forKey: .email)
        try container.encode(self.phone, forKey: .phone)
        try container.encode(self.iban, forKey: .iban)
        try container.encode(self.bankName, forKey: .bankName)
        try container.encode(self.peppolId, forKey: .peppolId)
        try container.encode(self.sepaCreditorId, forKey: .sepaCreditorId)
        try container.encode(self.logoFileId, forKey: .logoFileId)
        try container.encode(self.legalForm, forKey: .legalForm)
        try container.encode(self.registryName, forKey: .registryName)
        try container.encode(self.incorporatedOn, forKey: .incorporatedOn)
        try container.encode(self.shareCapital, forKey: .shareCapital)
        try container.encode(self.accountsKeptBy, forKey: .accountsKeptBy)
        try container.encode(self.vatPeriod, forKey: .vatPeriod)
        try container.encode(self.fiscalYearEndMonth, forKey: .fiscalYearEndMonth)
        try container.encode(self.timeZone, forKey: .timeZone)
        try container.encode(self.filingOptions, forKey: .filingOptions)
        try container.encode(self.bookkeeperName, forKey: .bookkeeperName)
        try container.encode(self.auditorName, forKey: .auditorName)
        try container.encode(self.auditorRegistrationNumber, forKey: .auditorRegistrationNumber)
        try container.encode(self.auditRequired, forKey: .auditRequired)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case code
        case vatCode
        case smeExemptionNumber
        case isVatPayer
        case isSandbox
        case countryCode
        case chartTemplate
        case countryChartTemplate
        case baseCurrency
        case defaultInvoiceCurrency
        case status
        case address
        case email
        case phone
        case iban
        case bankName
        case peppolId
        case sepaCreditorId
        case logoFileId
        case legalForm
        case registryName
        case incorporatedOn
        case shareCapital
        case accountsKeptBy
        case vatPeriod
        case fiscalYearEndMonth
        case timeZone
        case filingOptions
        case bookkeeperName
        case auditorName
        case auditorRegistrationNumber
        case auditRequired
    }
}