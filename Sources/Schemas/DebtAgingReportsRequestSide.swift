import Foundation

public enum DebtAgingReportsRequestSide: String, Codable, Hashable, CaseIterable, Sendable {
    case receivables
    case payables
}