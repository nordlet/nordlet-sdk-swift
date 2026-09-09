import Foundation

public enum PostV1BankSettlementsLinkResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case imported
    case posted
}