import Foundation

public enum RunsApprovePayrollResponseComponentTotalsItemKind: String, Codable, Hashable, CaseIterable, Sendable {
    case allowance
    case employeeTax = "employee_tax"
    case employeeContribution = "employee_contribution"
    case employerContribution = "employer_contribution"
    case employerPayment = "employer_payment"
}