import Foundation

public enum PostV1InventoryLandedCostsGetResponseMethod: String, Codable, Hashable, CaseIterable, Sendable {
    case byValue = "by_value"
    case byQuantity = "by_quantity"
}