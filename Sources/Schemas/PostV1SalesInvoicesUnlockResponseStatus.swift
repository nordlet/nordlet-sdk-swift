import Foundation

public enum PostV1SalesInvoicesUnlockResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case issued
}