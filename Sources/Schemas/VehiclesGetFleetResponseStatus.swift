import Foundation

public enum VehiclesGetFleetResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case sold
    case scrapped
}