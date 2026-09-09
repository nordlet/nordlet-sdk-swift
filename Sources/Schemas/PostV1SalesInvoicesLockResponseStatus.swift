import Foundation

public enum PostV1SalesInvoicesLockResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case issued
}