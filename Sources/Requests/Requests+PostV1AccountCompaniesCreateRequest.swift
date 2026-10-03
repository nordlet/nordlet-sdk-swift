import Foundation

extension Requests {
    public struct PostV1AccountCompaniesCreateRequest: Codable, Hashable, Sendable {
        public let name: String
        public let code: String?
        public let vatCode: String?
        public let smeExemptionNumber: String?
        public let isVatPayer: Bool?
        public let vatPeriod: PostV1AccountCompaniesCreateRequestVatPeriod?
        public let fiscalYearEndMonth: Int64?
        public let timeZone: String?
        public let filingOptions: [String: String]?
        public let address: PostV1AccountCompaniesCreateRequestAddress?
        public let email: String?
        public let phone: String?
        public let iban: String?
        public let bankName: String?
        public let peppolId: String?
        public let sepaCreditorId: String?
        public let defaultInvoiceCurrency: String?
        public let legalForm: String?
        public let registryName: String?
        public let incorporatedOn: String?
        public let shareCapital: String?
        public let accountsKeptBy: PostV1AccountCompaniesCreateRequestAccountsKeptBy?
        public let bookkeeperName: String?
        public let auditorName: String?
        public let auditorRegistrationNumber: String?
        public let auditRequired: Bool?
        /// Jurisdiction the company is registered in (immutable after creation)
        public let countryCode: PostV1AccountCompaniesCreateRequestCountryCode?
        /// Sandbox companies hold test data and are purged immediately on delete (immutable after creation)
        public let isSandbox: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            name: String,
            code: String? = nil,
            vatCode: String? = nil,
            smeExemptionNumber: String? = nil,
            isVatPayer: Bool? = nil,
            vatPeriod: PostV1AccountCompaniesCreateRequestVatPeriod? = nil,
            fiscalYearEndMonth: Int64? = nil,
            timeZone: String? = nil,
            filingOptions: [String: String]? = nil,
            address: PostV1AccountCompaniesCreateRequestAddress? = nil,
            email: String? = nil,
            phone: String? = nil,
            iban: String? = nil,
            bankName: String? = nil,
            peppolId: String? = nil,
            sepaCreditorId: String? = nil,
            defaultInvoiceCurrency: String? = nil,
            legalForm: String? = nil,
            registryName: String? = nil,
            incorporatedOn: String? = nil,
            shareCapital: String? = nil,
            accountsKeptBy: PostV1AccountCompaniesCreateRequestAccountsKeptBy? = nil,
            bookkeeperName: String? = nil,
            auditorName: String? = nil,
            auditorRegistrationNumber: String? = nil,
            auditRequired: Bool? = nil,
            countryCode: PostV1AccountCompaniesCreateRequestCountryCode? = nil,
            isSandbox: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.name = name
            self.code = code
            self.vatCode = vatCode
            self.smeExemptionNumber = smeExemptionNumber
            self.isVatPayer = isVatPayer
            self.vatPeriod = vatPeriod
            self.fiscalYearEndMonth = fiscalYearEndMonth
            self.timeZone = timeZone
            self.filingOptions = filingOptions
            self.address = address
            self.email = email
            self.phone = phone
            self.iban = iban
            self.bankName = bankName
            self.peppolId = peppolId
            self.sepaCreditorId = sepaCreditorId
            self.defaultInvoiceCurrency = defaultInvoiceCurrency
            self.legalForm = legalForm
            self.registryName = registryName
            self.incorporatedOn = incorporatedOn
            self.shareCapital = shareCapital
            self.accountsKeptBy = accountsKeptBy
            self.bookkeeperName = bookkeeperName
            self.auditorName = auditorName
            self.auditorRegistrationNumber = auditorRegistrationNumber
            self.auditRequired = auditRequired
            self.countryCode = countryCode
            self.isSandbox = isSandbox
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.name = try container.decode(String.self, forKey: .name)
            self.code = try container.decodeIfPresent(String.self, forKey: .code)
            self.vatCode = try container.decodeIfPresent(String.self, forKey: .vatCode)
            self.smeExemptionNumber = try container.decodeIfPresent(String.self, forKey: .smeExemptionNumber)
            self.isVatPayer = try container.decodeIfPresent(Bool.self, forKey: .isVatPayer)
            self.vatPeriod = try container.decodeIfPresent(PostV1AccountCompaniesCreateRequestVatPeriod.self, forKey: .vatPeriod)
            self.fiscalYearEndMonth = try container.decodeIfPresent(Int64.self, forKey: .fiscalYearEndMonth)
            self.timeZone = try container.decodeIfPresent(String.self, forKey: .timeZone)
            self.filingOptions = try container.decodeIfPresent([String: String].self, forKey: .filingOptions)
            self.address = try container.decodeIfPresent(PostV1AccountCompaniesCreateRequestAddress.self, forKey: .address)
            self.email = try container.decodeIfPresent(String.self, forKey: .email)
            self.phone = try container.decodeIfPresent(String.self, forKey: .phone)
            self.iban = try container.decodeIfPresent(String.self, forKey: .iban)
            self.bankName = try container.decodeIfPresent(String.self, forKey: .bankName)
            self.peppolId = try container.decodeIfPresent(String.self, forKey: .peppolId)
            self.sepaCreditorId = try container.decodeIfPresent(String.self, forKey: .sepaCreditorId)
            self.defaultInvoiceCurrency = try container.decodeIfPresent(String.self, forKey: .defaultInvoiceCurrency)
            self.legalForm = try container.decodeIfPresent(String.self, forKey: .legalForm)
            self.registryName = try container.decodeIfPresent(String.self, forKey: .registryName)
            self.incorporatedOn = try container.decodeIfPresent(String.self, forKey: .incorporatedOn)
            self.shareCapital = try container.decodeIfPresent(String.self, forKey: .shareCapital)
            self.accountsKeptBy = try container.decodeIfPresent(PostV1AccountCompaniesCreateRequestAccountsKeptBy.self, forKey: .accountsKeptBy)
            self.bookkeeperName = try container.decodeIfPresent(String.self, forKey: .bookkeeperName)
            self.auditorName = try container.decodeIfPresent(String.self, forKey: .auditorName)
            self.auditorRegistrationNumber = try container.decodeIfPresent(String.self, forKey: .auditorRegistrationNumber)
            self.auditRequired = try container.decodeIfPresent(Bool.self, forKey: .auditRequired)
            self.countryCode = try container.decodeIfPresent(PostV1AccountCompaniesCreateRequestCountryCode.self, forKey: .countryCode)
            self.isSandbox = try container.decodeIfPresent(Bool.self, forKey: .isSandbox)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.name, forKey: .name)
            try container.encodeIfPresent(self.code, forKey: .code)
            try container.encodeIfPresent(self.vatCode, forKey: .vatCode)
            try container.encodeIfPresent(self.smeExemptionNumber, forKey: .smeExemptionNumber)
            try container.encodeIfPresent(self.isVatPayer, forKey: .isVatPayer)
            try container.encodeIfPresent(self.vatPeriod, forKey: .vatPeriod)
            try container.encodeIfPresent(self.fiscalYearEndMonth, forKey: .fiscalYearEndMonth)
            try container.encodeIfPresent(self.timeZone, forKey: .timeZone)
            try container.encodeIfPresent(self.filingOptions, forKey: .filingOptions)
            try container.encodeIfPresent(self.address, forKey: .address)
            try container.encodeIfPresent(self.email, forKey: .email)
            try container.encodeIfPresent(self.phone, forKey: .phone)
            try container.encodeIfPresent(self.iban, forKey: .iban)
            try container.encodeIfPresent(self.bankName, forKey: .bankName)
            try container.encodeIfPresent(self.peppolId, forKey: .peppolId)
            try container.encodeIfPresent(self.sepaCreditorId, forKey: .sepaCreditorId)
            try container.encodeIfPresent(self.defaultInvoiceCurrency, forKey: .defaultInvoiceCurrency)
            try container.encodeIfPresent(self.legalForm, forKey: .legalForm)
            try container.encodeIfPresent(self.registryName, forKey: .registryName)
            try container.encodeIfPresent(self.incorporatedOn, forKey: .incorporatedOn)
            try container.encodeIfPresent(self.shareCapital, forKey: .shareCapital)
            try container.encodeIfPresent(self.accountsKeptBy, forKey: .accountsKeptBy)
            try container.encodeIfPresent(self.bookkeeperName, forKey: .bookkeeperName)
            try container.encodeIfPresent(self.auditorName, forKey: .auditorName)
            try container.encodeIfPresent(self.auditorRegistrationNumber, forKey: .auditorRegistrationNumber)
            try container.encodeIfPresent(self.auditRequired, forKey: .auditRequired)
            try container.encodeIfPresent(self.countryCode, forKey: .countryCode)
            try container.encodeIfPresent(self.isSandbox, forKey: .isSandbox)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case name
            case code
            case vatCode
            case smeExemptionNumber
            case isVatPayer
            case vatPeriod
            case fiscalYearEndMonth
            case timeZone
            case filingOptions
            case address
            case email
            case phone
            case iban
            case bankName
            case peppolId
            case sepaCreditorId
            case defaultInvoiceCurrency
            case legalForm
            case registryName
            case incorporatedOn
            case shareCapital
            case accountsKeptBy
            case bookkeeperName
            case auditorName
            case auditorRegistrationNumber
            case auditRequired
            case countryCode
            case isSandbox
        }
    }
}