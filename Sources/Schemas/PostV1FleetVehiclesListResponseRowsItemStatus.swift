import Foundation

public enum PostV1FleetVehiclesListResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case sold
    case scrapped
}