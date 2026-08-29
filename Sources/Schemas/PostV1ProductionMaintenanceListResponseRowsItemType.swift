import Foundation

public enum PostV1ProductionMaintenanceListResponseRowsItemType: String, Codable, Hashable, CaseIterable, Sendable {
    case preventive
    case corrective
}