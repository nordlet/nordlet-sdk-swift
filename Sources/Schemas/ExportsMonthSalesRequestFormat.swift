import Foundation

public enum ExportsMonthSalesRequestFormat: String, Codable, Hashable, CaseIterable, Sendable {
    case csv
    case pdf
    case nordlet
}