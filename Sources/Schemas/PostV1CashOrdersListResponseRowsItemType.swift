import Foundation

public enum PostV1CashOrdersListResponseRowsItemType: String, Codable, Hashable, CaseIterable, Sendable {
    case receipt
    case disbursement
}