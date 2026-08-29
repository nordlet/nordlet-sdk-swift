import Foundation

public enum PostV1ProductionMaintenanceCreateResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case planned
    case completed
    case cancelled
}