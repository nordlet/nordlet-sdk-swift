import Foundation

public struct EeTsdAnnexesGetDeclarationsResponseInputAnnex6: Codable, Hashable, Sendable {
    /// Part II rows; their sum is 6000
    public let relatedParties: [EeTsdAnnexesGetDeclarationsResponseInputAnnex6RelatedPartiesItem]?
    /// 6010: fines and penalty payments imposed by law
    public let fines: String?
    /// 6020: interest paid under the Taxation Act
    public let taxInterest: String?
    /// 6030: value of confiscated property
    public let confiscatedProperty: String?
    /// 6040: environmental charges at the elevated rate and damage compensation
    public let environmentalCharges: String?
    /// 6050: bribes
    public let bribes: String?
    /// 6060: entrance and membership fees of non-profits not related to the business
    public let membershipFees: String?
    /// 6070: payments without a source document meeting the requirements
    public let undocumentedPayments: String?
    /// 6080: non-business obligations, assets and services, excess borrowing costs and the other amounts of the code
    public let nonBusinessExpenses: String?
    /// 6090: securities of a legal person in a low tax rate territory
    public let lowTaxSecurities: String?
    /// 6100: holdings in a legal person in a low tax rate territory
    public let lowTaxHoldings: String?
    /// 6110: penalties and damages paid to such a legal person
    public let lowTaxPenalties: String?
    /// 6120: loans, prepayments and claims against such a legal person
    public let lowTaxLoans: String?
    /// 6130: credit institutions only
    public let creditInstitutionLosses: String?
    /// 6140: reductions of an amount taxed on an earlier annex 6 (TuMS § 54 lg 6)
    public let reductions: [EeTsdAnnexesGetDeclarationsResponseInputAnnex6ReductionsItem]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        relatedParties: [EeTsdAnnexesGetDeclarationsResponseInputAnnex6RelatedPartiesItem]? = nil,
        fines: String? = nil,
        taxInterest: String? = nil,
        confiscatedProperty: String? = nil,
        environmentalCharges: String? = nil,
        bribes: String? = nil,
        membershipFees: String? = nil,
        undocumentedPayments: String? = nil,
        nonBusinessExpenses: String? = nil,
        lowTaxSecurities: String? = nil,
        lowTaxHoldings: String? = nil,
        lowTaxPenalties: String? = nil,
        lowTaxLoans: String? = nil,
        creditInstitutionLosses: String? = nil,
        reductions: [EeTsdAnnexesGetDeclarationsResponseInputAnnex6ReductionsItem]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.relatedParties = relatedParties
        self.fines = fines
        self.taxInterest = taxInterest
        self.confiscatedProperty = confiscatedProperty
        self.environmentalCharges = environmentalCharges
        self.bribes = bribes
        self.membershipFees = membershipFees
        self.undocumentedPayments = undocumentedPayments
        self.nonBusinessExpenses = nonBusinessExpenses
        self.lowTaxSecurities = lowTaxSecurities
        self.lowTaxHoldings = lowTaxHoldings
        self.lowTaxPenalties = lowTaxPenalties
        self.lowTaxLoans = lowTaxLoans
        self.creditInstitutionLosses = creditInstitutionLosses
        self.reductions = reductions
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.relatedParties = try container.decodeIfPresent([EeTsdAnnexesGetDeclarationsResponseInputAnnex6RelatedPartiesItem].self, forKey: .relatedParties)
        self.fines = try container.decodeIfPresent(String.self, forKey: .fines)
        self.taxInterest = try container.decodeIfPresent(String.self, forKey: .taxInterest)
        self.confiscatedProperty = try container.decodeIfPresent(String.self, forKey: .confiscatedProperty)
        self.environmentalCharges = try container.decodeIfPresent(String.self, forKey: .environmentalCharges)
        self.bribes = try container.decodeIfPresent(String.self, forKey: .bribes)
        self.membershipFees = try container.decodeIfPresent(String.self, forKey: .membershipFees)
        self.undocumentedPayments = try container.decodeIfPresent(String.self, forKey: .undocumentedPayments)
        self.nonBusinessExpenses = try container.decodeIfPresent(String.self, forKey: .nonBusinessExpenses)
        self.lowTaxSecurities = try container.decodeIfPresent(String.self, forKey: .lowTaxSecurities)
        self.lowTaxHoldings = try container.decodeIfPresent(String.self, forKey: .lowTaxHoldings)
        self.lowTaxPenalties = try container.decodeIfPresent(String.self, forKey: .lowTaxPenalties)
        self.lowTaxLoans = try container.decodeIfPresent(String.self, forKey: .lowTaxLoans)
        self.creditInstitutionLosses = try container.decodeIfPresent(String.self, forKey: .creditInstitutionLosses)
        self.reductions = try container.decodeIfPresent([EeTsdAnnexesGetDeclarationsResponseInputAnnex6ReductionsItem].self, forKey: .reductions)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.relatedParties, forKey: .relatedParties)
        try container.encodeIfPresent(self.fines, forKey: .fines)
        try container.encodeIfPresent(self.taxInterest, forKey: .taxInterest)
        try container.encodeIfPresent(self.confiscatedProperty, forKey: .confiscatedProperty)
        try container.encodeIfPresent(self.environmentalCharges, forKey: .environmentalCharges)
        try container.encodeIfPresent(self.bribes, forKey: .bribes)
        try container.encodeIfPresent(self.membershipFees, forKey: .membershipFees)
        try container.encodeIfPresent(self.undocumentedPayments, forKey: .undocumentedPayments)
        try container.encodeIfPresent(self.nonBusinessExpenses, forKey: .nonBusinessExpenses)
        try container.encodeIfPresent(self.lowTaxSecurities, forKey: .lowTaxSecurities)
        try container.encodeIfPresent(self.lowTaxHoldings, forKey: .lowTaxHoldings)
        try container.encodeIfPresent(self.lowTaxPenalties, forKey: .lowTaxPenalties)
        try container.encodeIfPresent(self.lowTaxLoans, forKey: .lowTaxLoans)
        try container.encodeIfPresent(self.creditInstitutionLosses, forKey: .creditInstitutionLosses)
        try container.encodeIfPresent(self.reductions, forKey: .reductions)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case relatedParties
        case fines
        case taxInterest
        case confiscatedProperty
        case environmentalCharges
        case bribes
        case membershipFees
        case undocumentedPayments
        case nonBusinessExpenses
        case lowTaxSecurities
        case lowTaxHoldings
        case lowTaxPenalties
        case lowTaxLoans
        case creditInstitutionLosses
        case reductions
    }
}