import Foundation

public enum PostV1InventoryLandedCostsCreateResponseMethod: String, Codable, Hashable, CaseIterable, Sendable {
    case byValue = "by_value"
    case byQuantity = "by_quantity"
}