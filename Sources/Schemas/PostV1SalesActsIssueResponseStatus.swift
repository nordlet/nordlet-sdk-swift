import Foundation

public enum PostV1SalesActsIssueResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case issued
    case cancelled
}