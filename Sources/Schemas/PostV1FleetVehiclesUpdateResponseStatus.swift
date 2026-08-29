import Foundation

public enum PostV1FleetVehiclesUpdateResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case sold
    case scrapped
}