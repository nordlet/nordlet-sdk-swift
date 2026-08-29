import Foundation

public enum PostV1ProductionMaintenanceCompleteResponseType: String, Codable, Hashable, CaseIterable, Sendable {
    case preventive
    case corrective
}