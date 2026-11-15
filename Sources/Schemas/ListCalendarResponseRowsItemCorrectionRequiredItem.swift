import Foundation

public enum ListCalendarResponseRowsItemCorrectionRequiredItem: String, Codable, Hashable, CaseIterable, Sendable {
    case reason
    case reasonCode
    case authorityReference
    case discoveredOn
}