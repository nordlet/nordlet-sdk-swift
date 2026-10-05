import Foundation

public enum VehiclesUpdateFleetRequestFuelType: String, Codable, Hashable, CaseIterable, Sendable {
    case petrol
    case diesel
    case electric
    case hybrid
    case lpg
    case other
}