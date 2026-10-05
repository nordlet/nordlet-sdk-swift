import Foundation

public enum MaintenanceListProductionResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case planned
    case completed
    case cancelled
}