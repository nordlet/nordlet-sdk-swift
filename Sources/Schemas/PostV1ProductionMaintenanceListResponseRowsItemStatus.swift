import Foundation

public enum PostV1ProductionMaintenanceListResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case planned
    case completed
    case cancelled
}