import Foundation

public enum PostV1PayrollRunsCreateResponseComponentTotalsItemKind: String, Codable, Hashable, CaseIterable, Sendable {
    case allowance
    case employeeTax = "employee_tax"
    case employeeContribution = "employee_contribution"
    case employerContribution = "employer_contribution"
    case employerPayment = "employer_payment"
}