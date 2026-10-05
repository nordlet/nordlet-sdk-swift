import Foundation

public enum VehiclesUpdateFleetRequestStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case sold
    case scrapped
}