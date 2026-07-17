import Foundation

public enum PostV1PurchasesInvoicesUpdateResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case registered
}