import Foundation

public enum ContractsEndHrResponseSalaryType: String, Codable, Hashable, CaseIterable, Sendable {
    case monthly
    case hourly
    case weekly
    case daily
    case yearly
}