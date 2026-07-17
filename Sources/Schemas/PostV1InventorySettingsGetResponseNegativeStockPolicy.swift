import Foundation

public enum PostV1InventorySettingsGetResponseNegativeStockPolicy: String, Codable, Hashable, CaseIterable, Sendable {
    case reject
    case allow
}