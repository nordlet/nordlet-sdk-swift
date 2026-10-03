import Foundation

public struct PostV1DeclarationsDeReturnFactsGetResponseFacts: Codable, Hashable, Sendable {
    public let changedShareholderIds: [String]?
    public let shareholderContracts: Bool?
    public let contracts: [PostV1DeclarationsDeReturnFactsGetResponseFactsContractsItem]?
    public let harmfulShareAcquisition: Bool?
    public let coronaAid: String?
    public let lossCarryback: String?
    public let donationCarryforward: String?
    public let contributionAccountOpening: String?
    public let contributions: [PostV1DeclarationsDeReturnFactsGetResponseFactsContributionsItem]?
    public let distributions: [PostV1DeclarationsDeReturnFactsGetResponseFactsDistributionsItem]?
    public let taxBalanceEquity: String?
    public let multipleMunicipalities: Bool?
    public let relocation: Nullable<PostV1DeclarationsDeReturnFactsGetResponseFactsRelocation>?
    public let municipalities: [PostV1DeclarationsDeReturnFactsGetResponseFactsMunicipalitiesItem]?
    public let landHoldings: [PostV1DeclarationsDeReturnFactsGetResponseFactsLandHoldingsItem]?
    public let propertyTaxExpense: String?
    public let licencesToNonResidents: String?
    public let participations: [PostV1DeclarationsDeReturnFactsGetResponseFactsParticipationsItem]?
    public let foreignIncome: [PostV1DeclarationsDeReturnFactsGetResponseFactsForeignIncomeItem]?
    public let smallBusinessSwitchDate: Nullable<String>?
    public let refundProcedureApplied: Bool?
    public let bic: String?
    public let representative: Nullable<PostV1DeclarationsDeReturnFactsGetResponseFactsRepresentative>?
    public let singleTransportTax: String?
    public let distanceSales: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        changedShareholderIds: [String]? = nil,
        shareholderContracts: Bool? = nil,
        contracts: [PostV1DeclarationsDeReturnFactsGetResponseFactsContractsItem]? = nil,
        harmfulShareAcquisition: Bool? = nil,
        coronaAid: String? = nil,
        lossCarryback: String? = nil,
        donationCarryforward: String? = nil,
        contributionAccountOpening: String? = nil,
        contributions: [PostV1DeclarationsDeReturnFactsGetResponseFactsContributionsItem]? = nil,
        distributions: [PostV1DeclarationsDeReturnFactsGetResponseFactsDistributionsItem]? = nil,
        taxBalanceEquity: String? = nil,
        multipleMunicipalities: Bool? = nil,
        relocation: Nullable<PostV1DeclarationsDeReturnFactsGetResponseFactsRelocation>? = nil,
        municipalities: [PostV1DeclarationsDeReturnFactsGetResponseFactsMunicipalitiesItem]? = nil,
        landHoldings: [PostV1DeclarationsDeReturnFactsGetResponseFactsLandHoldingsItem]? = nil,
        propertyTaxExpense: String? = nil,
        licencesToNonResidents: String? = nil,
        participations: [PostV1DeclarationsDeReturnFactsGetResponseFactsParticipationsItem]? = nil,
        foreignIncome: [PostV1DeclarationsDeReturnFactsGetResponseFactsForeignIncomeItem]? = nil,
        smallBusinessSwitchDate: Nullable<String>? = nil,
        refundProcedureApplied: Bool? = nil,
        bic: String? = nil,
        representative: Nullable<PostV1DeclarationsDeReturnFactsGetResponseFactsRepresentative>? = nil,
        singleTransportTax: String? = nil,
        distanceSales: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.changedShareholderIds = changedShareholderIds
        self.shareholderContracts = shareholderContracts
        self.contracts = contracts
        self.harmfulShareAcquisition = harmfulShareAcquisition
        self.coronaAid = coronaAid
        self.lossCarryback = lossCarryback
        self.donationCarryforward = donationCarryforward
        self.contributionAccountOpening = contributionAccountOpening
        self.contributions = contributions
        self.distributions = distributions
        self.taxBalanceEquity = taxBalanceEquity
        self.multipleMunicipalities = multipleMunicipalities
        self.relocation = relocation
        self.municipalities = municipalities
        self.landHoldings = landHoldings
        self.propertyTaxExpense = propertyTaxExpense
        self.licencesToNonResidents = licencesToNonResidents
        self.participations = participations
        self.foreignIncome = foreignIncome
        self.smallBusinessSwitchDate = smallBusinessSwitchDate
        self.refundProcedureApplied = refundProcedureApplied
        self.bic = bic
        self.representative = representative
        self.singleTransportTax = singleTransportTax
        self.distanceSales = distanceSales
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.changedShareholderIds = try container.decodeIfPresent([String].self, forKey: .changedShareholderIds)
        self.shareholderContracts = try container.decodeIfPresent(Bool.self, forKey: .shareholderContracts)
        self.contracts = try container.decodeIfPresent([PostV1DeclarationsDeReturnFactsGetResponseFactsContractsItem].self, forKey: .contracts)
        self.harmfulShareAcquisition = try container.decodeIfPresent(Bool.self, forKey: .harmfulShareAcquisition)
        self.coronaAid = try container.decodeIfPresent(String.self, forKey: .coronaAid)
        self.lossCarryback = try container.decodeIfPresent(String.self, forKey: .lossCarryback)
        self.donationCarryforward = try container.decodeIfPresent(String.self, forKey: .donationCarryforward)
        self.contributionAccountOpening = try container.decodeIfPresent(String.self, forKey: .contributionAccountOpening)
        self.contributions = try container.decodeIfPresent([PostV1DeclarationsDeReturnFactsGetResponseFactsContributionsItem].self, forKey: .contributions)
        self.distributions = try container.decodeIfPresent([PostV1DeclarationsDeReturnFactsGetResponseFactsDistributionsItem].self, forKey: .distributions)
        self.taxBalanceEquity = try container.decodeIfPresent(String.self, forKey: .taxBalanceEquity)
        self.multipleMunicipalities = try container.decodeIfPresent(Bool.self, forKey: .multipleMunicipalities)
        self.relocation = try container.decodeNullableIfPresent(PostV1DeclarationsDeReturnFactsGetResponseFactsRelocation.self, forKey: .relocation)
        self.municipalities = try container.decodeIfPresent([PostV1DeclarationsDeReturnFactsGetResponseFactsMunicipalitiesItem].self, forKey: .municipalities)
        self.landHoldings = try container.decodeIfPresent([PostV1DeclarationsDeReturnFactsGetResponseFactsLandHoldingsItem].self, forKey: .landHoldings)
        self.propertyTaxExpense = try container.decodeIfPresent(String.self, forKey: .propertyTaxExpense)
        self.licencesToNonResidents = try container.decodeIfPresent(String.self, forKey: .licencesToNonResidents)
        self.participations = try container.decodeIfPresent([PostV1DeclarationsDeReturnFactsGetResponseFactsParticipationsItem].self, forKey: .participations)
        self.foreignIncome = try container.decodeIfPresent([PostV1DeclarationsDeReturnFactsGetResponseFactsForeignIncomeItem].self, forKey: .foreignIncome)
        self.smallBusinessSwitchDate = try container.decodeNullableIfPresent(String.self, forKey: .smallBusinessSwitchDate)
        self.refundProcedureApplied = try container.decodeIfPresent(Bool.self, forKey: .refundProcedureApplied)
        self.bic = try container.decodeIfPresent(String.self, forKey: .bic)
        self.representative = try container.decodeNullableIfPresent(PostV1DeclarationsDeReturnFactsGetResponseFactsRepresentative.self, forKey: .representative)
        self.singleTransportTax = try container.decodeIfPresent(String.self, forKey: .singleTransportTax)
        self.distanceSales = try container.decodeIfPresent(String.self, forKey: .distanceSales)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.changedShareholderIds, forKey: .changedShareholderIds)
        try container.encodeIfPresent(self.shareholderContracts, forKey: .shareholderContracts)
        try container.encodeIfPresent(self.contracts, forKey: .contracts)
        try container.encodeIfPresent(self.harmfulShareAcquisition, forKey: .harmfulShareAcquisition)
        try container.encodeIfPresent(self.coronaAid, forKey: .coronaAid)
        try container.encodeIfPresent(self.lossCarryback, forKey: .lossCarryback)
        try container.encodeIfPresent(self.donationCarryforward, forKey: .donationCarryforward)
        try container.encodeIfPresent(self.contributionAccountOpening, forKey: .contributionAccountOpening)
        try container.encodeIfPresent(self.contributions, forKey: .contributions)
        try container.encodeIfPresent(self.distributions, forKey: .distributions)
        try container.encodeIfPresent(self.taxBalanceEquity, forKey: .taxBalanceEquity)
        try container.encodeIfPresent(self.multipleMunicipalities, forKey: .multipleMunicipalities)
        try container.encodeNullableIfPresent(self.relocation, forKey: .relocation)
        try container.encodeIfPresent(self.municipalities, forKey: .municipalities)
        try container.encodeIfPresent(self.landHoldings, forKey: .landHoldings)
        try container.encodeIfPresent(self.propertyTaxExpense, forKey: .propertyTaxExpense)
        try container.encodeIfPresent(self.licencesToNonResidents, forKey: .licencesToNonResidents)
        try container.encodeIfPresent(self.participations, forKey: .participations)
        try container.encodeIfPresent(self.foreignIncome, forKey: .foreignIncome)
        try container.encodeNullableIfPresent(self.smallBusinessSwitchDate, forKey: .smallBusinessSwitchDate)
        try container.encodeIfPresent(self.refundProcedureApplied, forKey: .refundProcedureApplied)
        try container.encodeIfPresent(self.bic, forKey: .bic)
        try container.encodeNullableIfPresent(self.representative, forKey: .representative)
        try container.encodeIfPresent(self.singleTransportTax, forKey: .singleTransportTax)
        try container.encodeIfPresent(self.distanceSales, forKey: .distanceSales)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case changedShareholderIds
        case shareholderContracts
        case contracts
        case harmfulShareAcquisition
        case coronaAid
        case lossCarryback
        case donationCarryforward
        case contributionAccountOpening
        case contributions
        case distributions
        case taxBalanceEquity
        case multipleMunicipalities
        case relocation
        case municipalities
        case landHoldings
        case propertyTaxExpense
        case licencesToNonResidents
        case participations
        case foreignIncome
        case smallBusinessSwitchDate
        case refundProcedureApplied
        case bic
        case representative
        case singleTransportTax
        case distanceSales
    }
}