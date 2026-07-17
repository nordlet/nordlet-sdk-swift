import Foundation

public enum PostV1SalesInvoicesIssueResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case issued
}