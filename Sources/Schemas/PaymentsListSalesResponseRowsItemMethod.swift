import Foundation

public enum PaymentsListSalesResponseRowsItemMethod: String, Codable, Hashable, CaseIterable, Sendable {
    case bankTransfer = "bank_transfer"
    case card
    case cash
}