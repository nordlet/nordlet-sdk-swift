import Foundation

public enum PostV1ReportsFinancialStatementsResponseCategory: String, Codable, Hashable, CaseIterable, Sendable {
    case micro
    case small
    case medium
    case large
}