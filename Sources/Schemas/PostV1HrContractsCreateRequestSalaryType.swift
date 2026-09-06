import Foundation

public enum PostV1HrContractsCreateRequestSalaryType: String, Codable, Hashable, CaseIterable, Sendable {
    case monthly
    case hourly
    case weekly
    case daily
    case yearly
}