import Foundation

public enum PostV1TransportWaybillsIssueResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case issued
    case cancelled
}