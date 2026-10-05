import Foundation

public enum MaintenanceCreateProductionResponseType: String, Codable, Hashable, CaseIterable, Sendable {
    case preventive
    case corrective
}