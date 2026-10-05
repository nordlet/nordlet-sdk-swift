import Foundation

public enum LandedCostsGetInventoryResponseMethod: String, Codable, Hashable, CaseIterable, Sendable {
    case byValue = "by_value"
    case byQuantity = "by_quantity"
}