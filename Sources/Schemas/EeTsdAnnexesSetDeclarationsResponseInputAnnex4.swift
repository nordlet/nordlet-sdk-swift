import Foundation

public struct EeTsdAnnexesSetDeclarationsResponseInputAnnex4: Codable, Hashable, Sendable {
    /// 4000: full or partial cover of the employee’s housing costs
    public let housing: String?
    /// 4010: insurance premiums not required by law, the employee being the beneficiary
    public let insurancePremiums: String?
    /// 4030: compensation for a personal car used for work above the limit
    public let carCompensationAboveLimit: String?
    /// 4040: an employer vehicle used for non-work purposes (TuMS § 48 lg 8)
    public let employerVehicle: String?
    /// 4050: other employer property used for non-work purposes
    public let otherProperty: String?
    /// 4061: interest at market terms on a loan given below market interest
    public let loanMarketInterest: String?
    /// 4062: interest at the rate of the loan contract
    public let loanContractInterest: String?
    /// 4071: market price of a thing, security, right or service given free or cheap
    public let transferMarketPrice: String?
    /// 4072: price applied to it
    public let transferAppliedPrice: String?
    public let stockOption: EeTsdAnnexesSetDeclarationsResponseInputAnnex4StockOption?
    /// 4091: price paid for a thing, security, right or service bought above market
    public let purchaseAppliedPrice: String?
    /// 4092: its market price
    public let purchaseMarketPrice: String?
    /// 4100: waiver of a monetary claim
    public let waivedClaims: String?
    /// 4110: education costs not directly related to the job
    public let education: String?
    /// 4120: health promotion above the yearly exempt amount
    public let healthPromotion: String?
    /// 4130: other fringe benefits
    public let other: String?
    /// 4150: of the total, not taxed with Estonian income tax
    public let notTaxedWithIncomeTax: String?
    /// 4160: of the total, not taxed with Estonian social tax
    public let notTaxedWithSocialTax: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        housing: String? = nil,
        insurancePremiums: String? = nil,
        carCompensationAboveLimit: String? = nil,
        employerVehicle: String? = nil,
        otherProperty: String? = nil,
        loanMarketInterest: String? = nil,
        loanContractInterest: String? = nil,
        transferMarketPrice: String? = nil,
        transferAppliedPrice: String? = nil,
        stockOption: EeTsdAnnexesSetDeclarationsResponseInputAnnex4StockOption? = nil,
        purchaseAppliedPrice: String? = nil,
        purchaseMarketPrice: String? = nil,
        waivedClaims: String? = nil,
        education: String? = nil,
        healthPromotion: String? = nil,
        other: String? = nil,
        notTaxedWithIncomeTax: String? = nil,
        notTaxedWithSocialTax: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.housing = housing
        self.insurancePremiums = insurancePremiums
        self.carCompensationAboveLimit = carCompensationAboveLimit
        self.employerVehicle = employerVehicle
        self.otherProperty = otherProperty
        self.loanMarketInterest = loanMarketInterest
        self.loanContractInterest = loanContractInterest
        self.transferMarketPrice = transferMarketPrice
        self.transferAppliedPrice = transferAppliedPrice
        self.stockOption = stockOption
        self.purchaseAppliedPrice = purchaseAppliedPrice
        self.purchaseMarketPrice = purchaseMarketPrice
        self.waivedClaims = waivedClaims
        self.education = education
        self.healthPromotion = healthPromotion
        self.other = other
        self.notTaxedWithIncomeTax = notTaxedWithIncomeTax
        self.notTaxedWithSocialTax = notTaxedWithSocialTax
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.housing = try container.decodeIfPresent(String.self, forKey: .housing)
        self.insurancePremiums = try container.decodeIfPresent(String.self, forKey: .insurancePremiums)
        self.carCompensationAboveLimit = try container.decodeIfPresent(String.self, forKey: .carCompensationAboveLimit)
        self.employerVehicle = try container.decodeIfPresent(String.self, forKey: .employerVehicle)
        self.otherProperty = try container.decodeIfPresent(String.self, forKey: .otherProperty)
        self.loanMarketInterest = try container.decodeIfPresent(String.self, forKey: .loanMarketInterest)
        self.loanContractInterest = try container.decodeIfPresent(String.self, forKey: .loanContractInterest)
        self.transferMarketPrice = try container.decodeIfPresent(String.self, forKey: .transferMarketPrice)
        self.transferAppliedPrice = try container.decodeIfPresent(String.self, forKey: .transferAppliedPrice)
        self.stockOption = try container.decodeIfPresent(EeTsdAnnexesSetDeclarationsResponseInputAnnex4StockOption.self, forKey: .stockOption)
        self.purchaseAppliedPrice = try container.decodeIfPresent(String.self, forKey: .purchaseAppliedPrice)
        self.purchaseMarketPrice = try container.decodeIfPresent(String.self, forKey: .purchaseMarketPrice)
        self.waivedClaims = try container.decodeIfPresent(String.self, forKey: .waivedClaims)
        self.education = try container.decodeIfPresent(String.self, forKey: .education)
        self.healthPromotion = try container.decodeIfPresent(String.self, forKey: .healthPromotion)
        self.other = try container.decodeIfPresent(String.self, forKey: .other)
        self.notTaxedWithIncomeTax = try container.decodeIfPresent(String.self, forKey: .notTaxedWithIncomeTax)
        self.notTaxedWithSocialTax = try container.decodeIfPresent(String.self, forKey: .notTaxedWithSocialTax)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.housing, forKey: .housing)
        try container.encodeIfPresent(self.insurancePremiums, forKey: .insurancePremiums)
        try container.encodeIfPresent(self.carCompensationAboveLimit, forKey: .carCompensationAboveLimit)
        try container.encodeIfPresent(self.employerVehicle, forKey: .employerVehicle)
        try container.encodeIfPresent(self.otherProperty, forKey: .otherProperty)
        try container.encodeIfPresent(self.loanMarketInterest, forKey: .loanMarketInterest)
        try container.encodeIfPresent(self.loanContractInterest, forKey: .loanContractInterest)
        try container.encodeIfPresent(self.transferMarketPrice, forKey: .transferMarketPrice)
        try container.encodeIfPresent(self.transferAppliedPrice, forKey: .transferAppliedPrice)
        try container.encodeIfPresent(self.stockOption, forKey: .stockOption)
        try container.encodeIfPresent(self.purchaseAppliedPrice, forKey: .purchaseAppliedPrice)
        try container.encodeIfPresent(self.purchaseMarketPrice, forKey: .purchaseMarketPrice)
        try container.encodeIfPresent(self.waivedClaims, forKey: .waivedClaims)
        try container.encodeIfPresent(self.education, forKey: .education)
        try container.encodeIfPresent(self.healthPromotion, forKey: .healthPromotion)
        try container.encodeIfPresent(self.other, forKey: .other)
        try container.encodeIfPresent(self.notTaxedWithIncomeTax, forKey: .notTaxedWithIncomeTax)
        try container.encodeIfPresent(self.notTaxedWithSocialTax, forKey: .notTaxedWithSocialTax)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case housing
        case insurancePremiums
        case carCompensationAboveLimit
        case employerVehicle
        case otherProperty
        case loanMarketInterest
        case loanContractInterest
        case transferMarketPrice
        case transferAppliedPrice
        case stockOption
        case purchaseAppliedPrice
        case purchaseMarketPrice
        case waivedClaims
        case education
        case healthPromotion
        case other
        case notTaxedWithIncomeTax
        case notTaxedWithSocialTax
    }
}