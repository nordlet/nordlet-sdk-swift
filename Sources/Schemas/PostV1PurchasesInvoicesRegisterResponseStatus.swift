import Foundation

public enum PostV1PurchasesInvoicesRegisterResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case registered
}