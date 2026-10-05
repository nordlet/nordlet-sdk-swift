import Foundation

public enum FinancialStatementsReportsResponseCategory: String, Codable, Hashable, CaseIterable, Sendable {
    case micro
    case small
    case medium
    case large
}