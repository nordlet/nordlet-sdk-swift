import Foundation

public enum MaintenanceCreateProductionResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case planned
    case completed
    case cancelled
}