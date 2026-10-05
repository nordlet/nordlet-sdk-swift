import Foundation

public enum SettingsUpdateInventoryRequestNegativeStockPolicy: String, Codable, Hashable, CaseIterable, Sendable {
    case reject
    case allow
}