import Foundation

public enum PostV1FleetVehiclesGetResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case sold
    case scrapped
}