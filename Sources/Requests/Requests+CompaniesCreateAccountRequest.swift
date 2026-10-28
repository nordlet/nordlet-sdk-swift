import Foundation

extension Requests {
    public struct CompaniesCreateAccountRequest: Codable, Hashable, Sendable {
        public let name: String
        public let code: String?
        public let vatCode: String?
        public let smeExemptionNumber: String?
        public let isVatPayer: Bool?
        public let vatPeriod: CompaniesCreateAccountRequestVatPeriod?
        public let fiscalYearEndMonth: Int64?
        public let timeZone: String?
        public let filingOptions: [String: String]?
        public let address: CompaniesCreateAccountRequestAddress?
        public let email: String?
        public let phone: String?
        public let iban: String?
        public let bankName: String?
        public let bankBic: String?
        /// Sort code, routing number, BSB, IFSC or institution number
        public let bankCode: String?
        /// Transit number (Canada)
        public let bankBranchCode: String?
        public let bankAccountNumber: String?
        /// Prefix of the numbers of invoices issued without a document series; SF when not set
        public let invoicePrefix: String?
        /// Language a new invoice starts with when neither the invoice nor its partner names one
        public let defaultInvoiceLocale: CompaniesCreateAccountRequestDefaultInvoiceLocale?
        /// Note a new invoice, proforma or advance invoice starts with when it names no notes
        public let defaultInvoiceNote: String?
        public let peppolId: String?
        public let sepaCreditorId: String?
        public let defaultInvoiceCurrency: String?
        public let legalForm: String?
        public let registryName: String?
        public let incorporatedOn: CalendarDate?
        public let shareCapital: String?
        public let accountsKeptBy: CompaniesCreateAccountRequestAccountsKeptBy?
        public let bookkeeperName: String?
        public let auditorName: String?
        public let auditorRegistrationNumber: String?
        public let auditRequired: Bool?
        /// Jurisdiction the company is registered in (immutable after creation)
        public let countryCode: CompaniesCreateAccountRequestCountryCode?
        /// Currency the ledger is kept in; defaults to the national currency of countryCode (immutable after creation)
        public let baseCurrency: String?
        /// Sandbox companies hold test data and are purged immediately on delete (immutable after creation)
        public let isSandbox: Bool?
        /// The company determines its profit on a cash basis (receipts and payments, in Germany the Einnahmenüberschussrechnung of § 4 Abs. 3 EStG); it gets the cash-basis returns in its filing calendar (immutable after creation)
        public let cashBasis: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            name: String,
            code: String? = nil,
            vatCode: String? = nil,
            smeExemptionNumber: String? = nil,
            isVatPayer: Bool? = nil,
            vatPeriod: CompaniesCreateAccountRequestVatPeriod? = nil,
            fiscalYearEndMonth: Int64? = nil,
            timeZone: String? = nil,
            filingOptions: [String: String]? = nil,
            address: CompaniesCreateAccountRequestAddress? = nil,
            email: String? = nil,
            phone: String? = nil,
            iban: String? = nil,
            bankName: String? = nil,
            bankBic: String? = nil,
            bankCode: String? = nil,
            bankBranchCode: String? = nil,
            bankAccountNumber: String? = nil,
            invoicePrefix: String? = nil,
            defaultInvoiceLocale: CompaniesCreateAccountRequestDefaultInvoiceLocale? = nil,
            defaultInvoiceNote: String? = nil,
            peppolId: String? = nil,
            sepaCreditorId: String? = nil,
            defaultInvoiceCurrency: String? = nil,
            legalForm: String? = nil,
            registryName: String? = nil,
            incorporatedOn: CalendarDate? = nil,
            shareCapital: String? = nil,
            accountsKeptBy: CompaniesCreateAccountRequestAccountsKeptBy? = nil,
            bookkeeperName: String? = nil,
            auditorName: String? = nil,
            auditorRegistrationNumber: String? = nil,
            auditRequired: Bool? = nil,
            countryCode: CompaniesCreateAccountRequestCountryCode? = nil,
            baseCurrency: String? = nil,
            isSandbox: Bool? = nil,
            cashBasis: Bool? = nil,
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
            self.bankBic = bankBic
            self.bankCode = bankCode
            self.bankBranchCode = bankBranchCode
            self.bankAccountNumber = bankAccountNumber
            self.invoicePrefix = invoicePrefix
            self.defaultInvoiceLocale = defaultInvoiceLocale
            self.defaultInvoiceNote = defaultInvoiceNote
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
            self.baseCurrency = baseCurrency
            self.isSandbox = isSandbox
            self.cashBasis = cashBasis
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.name = try container.decode(String.self, forKey: .name)
            self.code = try container.decodeIfPresent(String.self, forKey: .code)
            self.vatCode = try container.decodeIfPresent(String.self, forKey: .vatCode)
            self.smeExemptionNumber = try container.decodeIfPresent(String.self, forKey: .smeExemptionNumber)
            self.isVatPayer = try container.decodeIfPresent(Bool.self, forKey: .isVatPayer)
            self.vatPeriod = try container.decodeIfPresent(CompaniesCreateAccountRequestVatPeriod.self, forKey: .vatPeriod)
            self.fiscalYearEndMonth = try container.decodeIfPresent(Int64.self, forKey: .fiscalYearEndMonth)
            self.timeZone = try container.decodeIfPresent(String.self, forKey: .timeZone)
            self.filingOptions = try container.decodeIfPresent([String: String].self, forKey: .filingOptions)
            self.address = try container.decodeIfPresent(CompaniesCreateAccountRequestAddress.self, forKey: .address)
            self.email = try container.decodeIfPresent(String.self, forKey: .email)
            self.phone = try container.decodeIfPresent(String.self, forKey: .phone)
            self.iban = try container.decodeIfPresent(String.self, forKey: .iban)
            self.bankName = try container.decodeIfPresent(String.self, forKey: .bankName)
            self.bankBic = try container.decodeIfPresent(String.self, forKey: .bankBic)
            self.bankCode = try container.decodeIfPresent(String.self, forKey: .bankCode)
            self.bankBranchCode = try container.decodeIfPresent(String.self, forKey: .bankBranchCode)
            self.bankAccountNumber = try container.decodeIfPresent(String.self, forKey: .bankAccountNumber)
            self.invoicePrefix = try container.decodeIfPresent(String.self, forKey: .invoicePrefix)
            self.defaultInvoiceLocale = try container.decodeIfPresent(CompaniesCreateAccountRequestDefaultInvoiceLocale.self, forKey: .defaultInvoiceLocale)
            self.defaultInvoiceNote = try container.decodeIfPresent(String.self, forKey: .defaultInvoiceNote)
            self.peppolId = try container.decodeIfPresent(String.self, forKey: .peppolId)
            self.sepaCreditorId = try container.decodeIfPresent(String.self, forKey: .sepaCreditorId)
            self.defaultInvoiceCurrency = try container.decodeIfPresent(String.self, forKey: .defaultInvoiceCurrency)
            self.legalForm = try container.decodeIfPresent(String.self, forKey: .legalForm)
            self.registryName = try container.decodeIfPresent(String.self, forKey: .registryName)
            self.incorporatedOn = try container.decodeIfPresent(CalendarDate.self, forKey: .incorporatedOn)
            self.shareCapital = try container.decodeIfPresent(String.self, forKey: .shareCapital)
            self.accountsKeptBy = try container.decodeIfPresent(CompaniesCreateAccountRequestAccountsKeptBy.self, forKey: .accountsKeptBy)
            self.bookkeeperName = try container.decodeIfPresent(String.self, forKey: .bookkeeperName)
            self.auditorName = try container.decodeIfPresent(String.self, forKey: .auditorName)
            self.auditorRegistrationNumber = try container.decodeIfPresent(String.self, forKey: .auditorRegistrationNumber)
            self.auditRequired = try container.decodeIfPresent(Bool.self, forKey: .auditRequired)
            self.countryCode = try container.decodeIfPresent(CompaniesCreateAccountRequestCountryCode.self, forKey: .countryCode)
            self.baseCurrency = try container.decodeIfPresent(String.self, forKey: .baseCurrency)
            self.isSandbox = try container.decodeIfPresent(Bool.self, forKey: .isSandbox)
            self.cashBasis = try container.decodeIfPresent(Bool.self, forKey: .cashBasis)
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
            try container.encodeIfPresent(self.bankBic, forKey: .bankBic)
            try container.encodeIfPresent(self.bankCode, forKey: .bankCode)
            try container.encodeIfPresent(self.bankBranchCode, forKey: .bankBranchCode)
            try container.encodeIfPresent(self.bankAccountNumber, forKey: .bankAccountNumber)
            try container.encodeIfPresent(self.invoicePrefix, forKey: .invoicePrefix)
            try container.encodeIfPresent(self.defaultInvoiceLocale, forKey: .defaultInvoiceLocale)
            try container.encodeIfPresent(self.defaultInvoiceNote, forKey: .defaultInvoiceNote)
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
            try container.encodeIfPresent(self.baseCurrency, forKey: .baseCurrency)
            try container.encodeIfPresent(self.isSandbox, forKey: .isSandbox)
            try container.encodeIfPresent(self.cashBasis, forKey: .cashBasis)
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
            case bankBic
            case bankCode
            case bankBranchCode
            case bankAccountNumber
            case invoicePrefix
            case defaultInvoiceLocale
            case defaultInvoiceNote
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
            case baseCurrency
            case isSandbox
            case cashBasis
        }
    }
}