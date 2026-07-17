import Foundation

public enum PostV1InventorySettingsUpdateResponseNegativeStockPolicy: String, Codable, Hashable, CaseIterable, Sendable {
    case reject
    case allow
}