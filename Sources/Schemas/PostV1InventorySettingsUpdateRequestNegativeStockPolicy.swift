import Foundation

public enum PostV1InventorySettingsUpdateRequestNegativeStockPolicy: String, Codable, Hashable, CaseIterable, Sendable {
    case reject
    case allow
}