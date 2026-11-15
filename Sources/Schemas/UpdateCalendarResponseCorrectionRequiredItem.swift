import Foundation

public enum UpdateCalendarResponseCorrectionRequiredItem: String, Codable, Hashable, CaseIterable, Sendable {
    case reason
    case reasonCode
    case authorityReference
    case discoveredOn
}