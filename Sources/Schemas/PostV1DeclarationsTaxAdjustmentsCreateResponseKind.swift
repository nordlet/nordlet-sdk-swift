import Foundation

public enum PostV1DeclarationsTaxAdjustmentsCreateResponseKind: String, Codable, Hashable, CaseIterable, Sendable {
    case nonDeductible = "non_deductible"
    case incomeIncrease = "income_increase"
    case nonTaxableIncome = "non_taxable_income"
    case excludedIncome = "excluded_income"
    case deductibleAdjustment = "deductible_adjustment"
    case donation
    case lossCarriedForward = "loss_carried_forward"
    case investmentRelief = "investment_relief"
    case foreignTaxCredit = "foreign_tax_credit"
    case taxReduction = "tax_reduction"
}