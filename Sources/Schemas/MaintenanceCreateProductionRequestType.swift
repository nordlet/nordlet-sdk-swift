import Foundation

public enum MaintenanceCreateProductionRequestType: String, Codable, Hashable, CaseIterable, Sendable {
    case preventive
    case corrective
}