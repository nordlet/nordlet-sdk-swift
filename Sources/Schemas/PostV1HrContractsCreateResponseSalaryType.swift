import Foundation

public enum PostV1HrContractsCreateResponseSalaryType: String, Codable, Hashable, CaseIterable, Sendable {
    case monthly
    case hourly
    case weekly
    case daily
    case yearly
}