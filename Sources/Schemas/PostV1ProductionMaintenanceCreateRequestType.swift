import Foundation

public enum PostV1ProductionMaintenanceCreateRequestType: String, Codable, Hashable, CaseIterable, Sendable {
    case preventive
    case corrective
}