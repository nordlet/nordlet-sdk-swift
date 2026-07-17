import Foundation

public enum PostV1ReportsDebtAgingRequestSide: String, Codable, Hashable, CaseIterable, Sendable {
    case receivables
    case payables
}