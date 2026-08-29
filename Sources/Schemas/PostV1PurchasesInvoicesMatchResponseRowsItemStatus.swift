import Foundation

public enum PostV1PurchasesInvoicesMatchResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case matched
    case notReceived = "not_received"
    case overInvoiced = "over_invoiced"
    case priceMismatch = "price_mismatch"
    case notOnOrder = "not_on_order"
    case notInvoiced = "not_invoiced"
}