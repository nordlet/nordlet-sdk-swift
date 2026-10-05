import Foundation

public enum SettingsGetInventoryResponseNegativeStockPolicy: String, Codable, Hashable, CaseIterable, Sendable {
    case reject
    case allow
}