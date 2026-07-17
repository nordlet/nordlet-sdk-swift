import Foundation

public enum PostV1SalesActsCancelResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case issued
    case cancelled
}