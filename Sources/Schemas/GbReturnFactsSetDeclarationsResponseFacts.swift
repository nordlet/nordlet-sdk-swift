import Foundation

public struct GbReturnFactsSetDeclarationsResponseFacts: Codable, Hashable, Sendable {
    public let companyType: Int64?
    public let associatedCompanies: Int64?
    public let partnerInFirm: Bool?
    public let smallCompaniesRegime: Bool?
    public let auditExemptionSection477: Bool?
    public let depreciation: String?
    public let amortisation: String?
    public let lossOrProfitOnSale: String?
    public let entertaining: String?
    public let otherAdditions: String?
    public let nonTradingLoanCredits: String?
    public let nonTradingLoanDebits: String?
    public let nonTaxableIncome: String?
    public let exemptDistributions: String?
    public let capitalAllowances: GbReturnFactsSetDeclarationsResponseFactsCapitalAllowances?
    public let balancingCharges: GbReturnFactsSetDeclarationsResponseFactsBalancingCharges?
    public let tradingLossesBroughtForward: String?
    public let grossChargeableGains: String?
    public let allowableLosses: String?
    public let qualifyingDonations: String?
    public let taxAlreadyPaid: String?
    public let declarantName: String?
    public let declarantStatus: String?
    public let seniorStatutoryAuditor: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        companyType: Int64? = nil,
        associatedCompanies: Int64? = nil,
        partnerInFirm: Bool? = nil,
        smallCompaniesRegime: Bool? = nil,
        auditExemptionSection477: Bool? = nil,
        depreciation: String? = nil,
        amortisation: String? = nil,
        lossOrProfitOnSale: String? = nil,
        entertaining: String? = nil,
        otherAdditions: String? = nil,
        nonTradingLoanCredits: String? = nil,
        nonTradingLoanDebits: String? = nil,
        nonTaxableIncome: String? = nil,
        exemptDistributions: String? = nil,
        capitalAllowances: GbReturnFactsSetDeclarationsResponseFactsCapitalAllowances? = nil,
        balancingCharges: GbReturnFactsSetDeclarationsResponseFactsBalancingCharges? = nil,
        tradingLossesBroughtForward: String? = nil,
        grossChargeableGains: String? = nil,
        allowableLosses: String? = nil,
        qualifyingDonations: String? = nil,
        taxAlreadyPaid: String? = nil,
        declarantName: String? = nil,
        declarantStatus: String? = nil,
        seniorStatutoryAuditor: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.companyType = companyType
        self.associatedCompanies = associatedCompanies
        self.partnerInFirm = partnerInFirm
        self.smallCompaniesRegime = smallCompaniesRegime
        self.auditExemptionSection477 = auditExemptionSection477
        self.depreciation = depreciation
        self.amortisation = amortisation
        self.lossOrProfitOnSale = lossOrProfitOnSale
        self.entertaining = entertaining
        self.otherAdditions = otherAdditions
        self.nonTradingLoanCredits = nonTradingLoanCredits
        self.nonTradingLoanDebits = nonTradingLoanDebits
        self.nonTaxableIncome = nonTaxableIncome
        self.exemptDistributions = exemptDistributions
        self.capitalAllowances = capitalAllowances
        self.balancingCharges = balancingCharges
        self.tradingLossesBroughtForward = tradingLossesBroughtForward
        self.grossChargeableGains = grossChargeableGains
        self.allowableLosses = allowableLosses
        self.qualifyingDonations = qualifyingDonations
        self.taxAlreadyPaid = taxAlreadyPaid
        self.declarantName = declarantName
        self.declarantStatus = declarantStatus
        self.seniorStatutoryAuditor = seniorStatutoryAuditor
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.companyType = try container.decodeIfPresent(Int64.self, forKey: .companyType)
        self.associatedCompanies = try container.decodeIfPresent(Int64.self, forKey: .associatedCompanies)
        self.partnerInFirm = try container.decodeIfPresent(Bool.self, forKey: .partnerInFirm)
        self.smallCompaniesRegime = try container.decodeIfPresent(Bool.self, forKey: .smallCompaniesRegime)
        self.auditExemptionSection477 = try container.decodeIfPresent(Bool.self, forKey: .auditExemptionSection477)
        self.depreciation = try container.decodeIfPresent(String.self, forKey: .depreciation)
        self.amortisation = try container.decodeIfPresent(String.self, forKey: .amortisation)
        self.lossOrProfitOnSale = try container.decodeIfPresent(String.self, forKey: .lossOrProfitOnSale)
        self.entertaining = try container.decodeIfPresent(String.self, forKey: .entertaining)
        self.otherAdditions = try container.decodeIfPresent(String.self, forKey: .otherAdditions)
        self.nonTradingLoanCredits = try container.decodeIfPresent(String.self, forKey: .nonTradingLoanCredits)
        self.nonTradingLoanDebits = try container.decodeIfPresent(String.self, forKey: .nonTradingLoanDebits)
        self.nonTaxableIncome = try container.decodeIfPresent(String.self, forKey: .nonTaxableIncome)
        self.exemptDistributions = try container.decodeIfPresent(String.self, forKey: .exemptDistributions)
        self.capitalAllowances = try container.decodeIfPresent(GbReturnFactsSetDeclarationsResponseFactsCapitalAllowances.self, forKey: .capitalAllowances)
        self.balancingCharges = try container.decodeIfPresent(GbReturnFactsSetDeclarationsResponseFactsBalancingCharges.self, forKey: .balancingCharges)
        self.tradingLossesBroughtForward = try container.decodeIfPresent(String.self, forKey: .tradingLossesBroughtForward)
        self.grossChargeableGains = try container.decodeIfPresent(String.self, forKey: .grossChargeableGains)
        self.allowableLosses = try container.decodeIfPresent(String.self, forKey: .allowableLosses)
        self.qualifyingDonations = try container.decodeIfPresent(String.self, forKey: .qualifyingDonations)
        self.taxAlreadyPaid = try container.decodeIfPresent(String.self, forKey: .taxAlreadyPaid)
        self.declarantName = try container.decodeIfPresent(String.self, forKey: .declarantName)
        self.declarantStatus = try container.decodeIfPresent(String.self, forKey: .declarantStatus)
        self.seniorStatutoryAuditor = try container.decodeIfPresent(String.self, forKey: .seniorStatutoryAuditor)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.companyType, forKey: .companyType)
        try container.encodeIfPresent(self.associatedCompanies, forKey: .associatedCompanies)
        try container.encodeIfPresent(self.partnerInFirm, forKey: .partnerInFirm)
        try container.encodeIfPresent(self.smallCompaniesRegime, forKey: .smallCompaniesRegime)
        try container.encodeIfPresent(self.auditExemptionSection477, forKey: .auditExemptionSection477)
        try container.encodeIfPresent(self.depreciation, forKey: .depreciation)
        try container.encodeIfPresent(self.amortisation, forKey: .amortisation)
        try container.encodeIfPresent(self.lossOrProfitOnSale, forKey: .lossOrProfitOnSale)
        try container.encodeIfPresent(self.entertaining, forKey: .entertaining)
        try container.encodeIfPresent(self.otherAdditions, forKey: .otherAdditions)
        try container.encodeIfPresent(self.nonTradingLoanCredits, forKey: .nonTradingLoanCredits)
        try container.encodeIfPresent(self.nonTradingLoanDebits, forKey: .nonTradingLoanDebits)
        try container.encodeIfPresent(self.nonTaxableIncome, forKey: .nonTaxableIncome)
        try container.encodeIfPresent(self.exemptDistributions, forKey: .exemptDistributions)
        try container.encodeIfPresent(self.capitalAllowances, forKey: .capitalAllowances)
        try container.encodeIfPresent(self.balancingCharges, forKey: .balancingCharges)
        try container.encodeIfPresent(self.tradingLossesBroughtForward, forKey: .tradingLossesBroughtForward)
        try container.encodeIfPresent(self.grossChargeableGains, forKey: .grossChargeableGains)
        try container.encodeIfPresent(self.allowableLosses, forKey: .allowableLosses)
        try container.encodeIfPresent(self.qualifyingDonations, forKey: .qualifyingDonations)
        try container.encodeIfPresent(self.taxAlreadyPaid, forKey: .taxAlreadyPaid)
        try container.encodeIfPresent(self.declarantName, forKey: .declarantName)
        try container.encodeIfPresent(self.declarantStatus, forKey: .declarantStatus)
        try container.encodeIfPresent(self.seniorStatutoryAuditor, forKey: .seniorStatutoryAuditor)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case companyType
        case associatedCompanies
        case partnerInFirm
        case smallCompaniesRegime
        case auditExemptionSection477
        case depreciation
        case amortisation
        case lossOrProfitOnSale
        case entertaining
        case otherAdditions
        case nonTradingLoanCredits
        case nonTradingLoanDebits
        case nonTaxableIncome
        case exemptDistributions
        case capitalAllowances
        case balancingCharges
        case tradingLossesBroughtForward
        case grossChargeableGains
        case allowableLosses
        case qualifyingDonations
        case taxAlreadyPaid
        case declarantName
        case declarantStatus
        case seniorStatutoryAuditor
    }
}