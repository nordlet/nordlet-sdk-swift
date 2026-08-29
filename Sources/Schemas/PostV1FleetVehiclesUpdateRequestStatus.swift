import Foundation

public enum PostV1FleetVehiclesUpdateRequestStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case sold
    case scrapped
}