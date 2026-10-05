import Foundation

public enum MaintenanceCancelProductionResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case planned
    case completed
    case cancelled
}