import Foundation

public enum TaxPaymentsListDeclarationsRequestTax: String, Codable, Hashable, CaseIterable, Sendable {
    case corporateIncomeTax = "corporate_income_tax"
    case payrollWithholding = "payroll_withholding"
    case vat
    case socialInsurance = "social_insurance"
    case other
}