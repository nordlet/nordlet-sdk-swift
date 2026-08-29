import Foundation

public enum PostV1FleetVehiclesCreateResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case sold
    case scrapped
}