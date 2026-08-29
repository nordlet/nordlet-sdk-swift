import Foundation

public enum PostV1ProductionMaintenanceCancelResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case planned
    case completed
    case cancelled
}