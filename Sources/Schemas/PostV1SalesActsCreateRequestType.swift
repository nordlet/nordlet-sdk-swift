import Foundation

public enum PostV1SalesActsCreateRequestType: String, Codable, Hashable, CaseIterable, Sendable {
    case goods
    case services
}