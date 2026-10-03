import Foundation

extension Requests {
    public struct PostV1AccountCompaniesUpdateRequest: Codable, Hashable, Sendable {
        public let name: String?
        public let code: Nullable<String>?
        public let vatCode: Nullable<String>?
        public let smeExemptionNumber: Nullable<String>?
        public let isVatPayer: Bool?
        public let vatPeriod: Nullable<PostV1AccountCompaniesUpdateRequestVatPeriod>?
        public let fiscalYearEndMonth: Nullable<Int64>?
        public let timeZone: String?
        public let filingOptions: Nullable<[String: Nullable<String>]>?
        public let address: PostV1AccountCompaniesUpdateRequestAddress?
        public let email: Nullable<String>?
        public let phone: Nullable<String>?
        public let iban: Nullable<String>?
        public let bankName: Nullable<String>?
        public let peppolId: Nullable<String>?
        public let sepaCreditorId: Nullable<String>?
        public let defaultInvoiceCurrency: String?
        public let legalForm: Nullable<String>?
        public let registryName: Nullable<String>?
        public let incorporatedOn: Nullable<String>?
        public let shareCapital: Nullable<String>?
        public let accountsKeptBy: Nullable<PostV1AccountCompaniesUpdateRequestAccountsKeptBy>?
        public let bookkeeperName: Nullable<String>?
        public let auditorName: Nullable<String>?
        public let auditorRegistrationNumber: Nullable<String>?
        public let auditRequired: Bool?
        public let logo: PostV1AccountCompaniesUpdateRequestLogo?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            name: String? = nil,
            code: Nullable<String>? = nil,
            vatCode: Nullable<String>? = nil,
            smeExemptionNumber: Nullable<String>? = nil,
            isVatPayer: Bool? = nil,
            vatPeriod: Nullable<PostV1AccountCompaniesUpdateRequestVatPeriod>? = nil,
            fiscalYearEndMonth: Nullable<Int64>? = nil,
            timeZone: String? = nil,
            filingOptions: Nullable<[String: Nullable<String>]>? = nil,
            address: PostV1AccountCompaniesUpdateRequestAddress? = nil,
            email: Nullable<String>? = nil,
            phone: Nullable<String>? = nil,
            iban: Nullable<String>? = nil,
            bankName: Nullable<String>? = nil,
            peppolId: Nullable<String>? = nil,
            sepaCreditorId: Nullable<String>? = nil,
            defaultInvoiceCurrency: String? = nil,
            legalForm: Nullable<String>? = nil,
            registryName: Nullable<String>? = nil,
            incorporatedOn: Nullable<String>? = nil,
            shareCapital: Nullable<String>? = nil,
            accountsKeptBy: Nullable<PostV1AccountCompaniesUpdateRequestAccountsKeptBy>? = nil,
            bookkeeperName: Nullable<String>? = nil,
            auditorName: Nullable<String>? = nil,
            auditorRegistrationNumber: Nullable<String>? = nil,
            auditRequired: Bool? = nil,
            logo: PostV1AccountCompaniesUpdateRequestLogo? = nil,
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
            self.logo = logo
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.code = try container.decodeNullableIfPresent(String.self, forKey: .code)
            self.vatCode = try container.decodeNullableIfPresent(String.self, forKey: .vatCode)
            self.smeExemptionNumber = try container.decodeNullableIfPresent(String.self, forKey: .smeExemptionNumber)
            self.isVatPayer = try container.decodeIfPresent(Bool.self, forKey: .isVatPayer)
            self.vatPeriod = try container.decodeNullableIfPresent(PostV1AccountCompaniesUpdateRequestVatPeriod.self, forKey: .vatPeriod)
            self.fiscalYearEndMonth = try container.decodeNullableIfPresent(Int64.self, forKey: .fiscalYearEndMonth)
            self.timeZone = try container.decodeIfPresent(String.self, forKey: .timeZone)
            self.filingOptions = try container.decodeNullableIfPresent([String: Nullable<String>].self, forKey: .filingOptions)
            self.address = try container.decodeIfPresent(PostV1AccountCompaniesUpdateRequestAddress.self, forKey: .address)
            self.email = try container.decodeNullableIfPresent(String.self, forKey: .email)
            self.phone = try container.decodeNullableIfPresent(String.self, forKey: .phone)
            self.iban = try container.decodeNullableIfPresent(String.self, forKey: .iban)
            self.bankName = try container.decodeNullableIfPresent(String.self, forKey: .bankName)
            self.peppolId = try container.decodeNullableIfPresent(String.self, forKey: .peppolId)
            self.sepaCreditorId = try container.decodeNullableIfPresent(String.self, forKey: .sepaCreditorId)
            self.defaultInvoiceCurrency = try container.decodeIfPresent(String.self, forKey: .defaultInvoiceCurrency)
            self.legalForm = try container.decodeNullableIfPresent(String.self, forKey: .legalForm)
            self.registryName = try container.decodeNullableIfPresent(String.self, forKey: .registryName)
            self.incorporatedOn = try container.decodeNullableIfPresent(String.self, forKey: .incorporatedOn)
            self.shareCapital = try container.decodeNullableIfPresent(String.self, forKey: .shareCapital)
            self.accountsKeptBy = try container.decodeNullableIfPresent(PostV1AccountCompaniesUpdateRequestAccountsKeptBy.self, forKey: .accountsKeptBy)
            self.bookkeeperName = try container.decodeNullableIfPresent(String.self, forKey: .bookkeeperName)
            self.auditorName = try container.decodeNullableIfPresent(String.self, forKey: .auditorName)
            self.auditorRegistrationNumber = try container.decodeNullableIfPresent(String.self, forKey: .auditorRegistrationNumber)
            self.auditRequired = try container.decodeIfPresent(Bool.self, forKey: .auditRequired)
            self.logo = try container.decodeIfPresent(PostV1AccountCompaniesUpdateRequestLogo.self, forKey: .logo)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeNullableIfPresent(self.code, forKey: .code)
            try container.encodeNullableIfPresent(self.vatCode, forKey: .vatCode)
            try container.encodeNullableIfPresent(self.smeExemptionNumber, forKey: .smeExemptionNumber)
            try container.encodeIfPresent(self.isVatPayer, forKey: .isVatPayer)
            try container.encodeNullableIfPresent(self.vatPeriod, forKey: .vatPeriod)
            try container.encodeNullableIfPresent(self.fiscalYearEndMonth, forKey: .fiscalYearEndMonth)
            try container.encodeIfPresent(self.timeZone, forKey: .timeZone)
            try container.encodeNullableIfPresent(self.filingOptions, forKey: .filingOptions)
            try container.encodeIfPresent(self.address, forKey: .address)
            try container.encodeNullableIfPresent(self.email, forKey: .email)
            try container.encodeNullableIfPresent(self.phone, forKey: .phone)
            try container.encodeNullableIfPresent(self.iban, forKey: .iban)
            try container.encodeNullableIfPresent(self.bankName, forKey: .bankName)
            try container.encodeNullableIfPresent(self.peppolId, forKey: .peppolId)
            try container.encodeNullableIfPresent(self.sepaCreditorId, forKey: .sepaCreditorId)
            try container.encodeIfPresent(self.defaultInvoiceCurrency, forKey: .defaultInvoiceCurrency)
            try container.encodeNullableIfPresent(self.legalForm, forKey: .legalForm)
            try container.encodeNullableIfPresent(self.registryName, forKey: .registryName)
            try container.encodeNullableIfPresent(self.incorporatedOn, forKey: .incorporatedOn)
            try container.encodeNullableIfPresent(self.shareCapital, forKey: .shareCapital)
            try container.encodeNullableIfPresent(self.accountsKeptBy, forKey: .accountsKeptBy)
            try container.encodeNullableIfPresent(self.bookkeeperName, forKey: .bookkeeperName)
            try container.encodeNullableIfPresent(self.auditorName, forKey: .auditorName)
            try container.encodeNullableIfPresent(self.auditorRegistrationNumber, forKey: .auditorRegistrationNumber)
            try container.encodeIfPresent(self.auditRequired, forKey: .auditRequired)
            try container.encodeIfPresent(self.logo, forKey: .logo)
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
            case logo
        }
    }
}