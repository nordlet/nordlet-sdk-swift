import Foundation

public enum PostV1BankSettlementsPostResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case imported
    case posted
}