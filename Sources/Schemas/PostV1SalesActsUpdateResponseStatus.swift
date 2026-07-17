import Foundation

public enum PostV1SalesActsUpdateResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case issued
    case cancelled
}