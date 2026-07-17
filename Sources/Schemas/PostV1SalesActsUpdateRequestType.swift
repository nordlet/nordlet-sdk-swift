import Foundation

public enum PostV1SalesActsUpdateRequestType: String, Codable, Hashable, CaseIterable, Sendable {
    case goods
    case services
}