import Foundation

public enum UpdateCalendarResponseCorrectionOptionalItem: String, Codable, Hashable, CaseIterable, Sendable {
    case reason
    case reasonCode
    case authorityReference
    case discoveredOn
}