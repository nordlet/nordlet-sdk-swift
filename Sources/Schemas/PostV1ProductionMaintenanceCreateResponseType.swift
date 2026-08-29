import Foundation

public enum PostV1ProductionMaintenanceCreateResponseType: String, Codable, Hashable, CaseIterable, Sendable {
    case preventive
    case corrective
}