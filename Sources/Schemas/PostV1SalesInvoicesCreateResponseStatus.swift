import Foundation

public enum PostV1SalesInvoicesCreateResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case issued
}