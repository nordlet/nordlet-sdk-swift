import Foundation

public enum OrdersListCashResponseRowsItemType: String, Codable, Hashable, CaseIterable, Sendable {
    case receipt
    case disbursement
}