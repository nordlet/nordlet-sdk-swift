import Foundation

public enum PostV1SalesInvoicesUpdateResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case issued
}