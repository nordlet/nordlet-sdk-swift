import Foundation

public enum PostV1ProductionMaintenanceCompleteResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case planned
    case completed
    case cancelled
}