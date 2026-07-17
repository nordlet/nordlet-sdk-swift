import Foundation

public enum PostV1SalesActsGetResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case issued
    case cancelled
}