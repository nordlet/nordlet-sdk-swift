import Foundation

public enum PostV1PurchasesInvoicesMatchResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case matched
    case mismatched
}