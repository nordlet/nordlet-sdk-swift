import Foundation

public enum MaintenanceCancelProductionResponseType: String, Codable, Hashable, CaseIterable, Sendable {
    case preventive
    case corrective
}