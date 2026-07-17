import Foundation

public enum PostV1SalesActsCreateResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case issued
    case cancelled
}