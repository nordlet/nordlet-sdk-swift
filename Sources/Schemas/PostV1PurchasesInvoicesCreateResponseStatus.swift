import Foundation

public enum PostV1PurchasesInvoicesCreateResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case registered
}