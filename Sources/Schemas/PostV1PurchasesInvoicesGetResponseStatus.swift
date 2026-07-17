import Foundation

public enum PostV1PurchasesInvoicesGetResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case registered
}