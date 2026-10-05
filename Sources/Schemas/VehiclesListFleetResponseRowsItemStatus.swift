import Foundation

public enum VehiclesListFleetResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case sold
    case scrapped
}