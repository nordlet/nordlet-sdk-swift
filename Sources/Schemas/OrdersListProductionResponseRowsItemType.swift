import Foundation

public enum OrdersListProductionResponseRowsItemType: String, Codable, Hashable, CaseIterable, Sendable {
    case assembly
    case disassembly
}