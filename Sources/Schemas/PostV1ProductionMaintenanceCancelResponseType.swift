import Foundation

public enum PostV1ProductionMaintenanceCancelResponseType: String, Codable, Hashable, CaseIterable, Sendable {
    case preventive
    case corrective
}