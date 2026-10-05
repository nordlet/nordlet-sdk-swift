import Foundation

public enum SettingsUpdateInventoryResponseNegativeStockPolicy: String, Codable, Hashable, CaseIterable, Sendable {
    case reject
    case allow
}