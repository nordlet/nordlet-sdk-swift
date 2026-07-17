import Foundation

public enum PostV1ReportsFinancialStatementsRequestCategory: String, Codable, Hashable, CaseIterable, Sendable {
    case micro
    case small
    case medium
    case large
}