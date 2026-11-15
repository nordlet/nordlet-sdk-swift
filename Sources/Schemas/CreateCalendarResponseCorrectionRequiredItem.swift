import Foundation

public enum CreateCalendarResponseCorrectionRequiredItem: String, Codable, Hashable, CaseIterable, Sendable {
    case reason
    case reasonCode
    case authorityReference
    case discoveredOn
}