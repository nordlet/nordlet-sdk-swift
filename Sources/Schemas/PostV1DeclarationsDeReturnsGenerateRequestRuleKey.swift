import Foundation

public enum PostV1DeclarationsDeReturnsGenerateRequestRuleKey: String, Codable, Hashable, CaseIterable, Sendable {
    case deEBilanz = "de-e-bilanz"
    case deCitReturn = "de-cit-return"
    case deTradeTax = "de-trade-tax"
    case deTradeTaxApportionment = "de-trade-tax-apportionment"
    case deAnnualVatReturn = "de-annual-vat-return"
    case dePayrollWithholding = "de-payroll-withholding"
    case dePayrollStatements = "de-payroll-statements"
}