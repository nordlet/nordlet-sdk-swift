import Foundation

public enum MaintenanceCompleteProductionResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case planned
    case completed
    case cancelled
}