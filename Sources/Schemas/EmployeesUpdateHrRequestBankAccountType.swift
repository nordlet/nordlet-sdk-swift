import Foundation

/// Checking or savings account; a US ACH file needs it
public enum EmployeesUpdateHrRequestBankAccountType: String, Codable, Hashable, CaseIterable, Sendable {
    case checking
    case savings
}