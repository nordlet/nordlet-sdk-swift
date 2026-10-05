import Foundation

public enum FinancialStatementsReportsRequestCategory: String, Codable, Hashable, CaseIterable, Sendable {
    case micro
    case small
    case medium
    case large
}