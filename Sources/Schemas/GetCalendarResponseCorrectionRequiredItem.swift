import Foundation

public enum GetCalendarResponseCorrectionRequiredItem: String, Codable, Hashable, CaseIterable, Sendable {
    case reason
    case reasonCode
    case authorityReference
    case discoveredOn
}