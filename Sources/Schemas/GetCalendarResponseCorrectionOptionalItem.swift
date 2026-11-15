import Foundation

public enum GetCalendarResponseCorrectionOptionalItem: String, Codable, Hashable, CaseIterable, Sendable {
    case reason
    case reasonCode
    case authorityReference
    case discoveredOn
}