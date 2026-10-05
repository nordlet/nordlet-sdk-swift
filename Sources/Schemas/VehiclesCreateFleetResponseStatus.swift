import Foundation

public enum VehiclesCreateFleetResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case sold
    case scrapped
}