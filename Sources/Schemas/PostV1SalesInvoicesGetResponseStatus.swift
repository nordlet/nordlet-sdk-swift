import Foundation

public enum PostV1SalesInvoicesGetResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case issued
}