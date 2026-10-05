import Foundation

public enum MaintenanceCompleteProductionResponseType: String, Codable, Hashable, CaseIterable, Sendable {
    case preventive
    case corrective
}