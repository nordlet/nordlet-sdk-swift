import Foundation

public enum VehiclesUpdateFleetResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case sold
    case scrapped
}