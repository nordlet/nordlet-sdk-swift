import Foundation

public enum CreateCalendarResponseCorrectionOptionalItem: String, Codable, Hashable, CaseIterable, Sendable {
    case reason
    case reasonCode
    case authorityReference
    case discoveredOn
}