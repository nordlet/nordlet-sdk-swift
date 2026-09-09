import Foundation

public enum PostV1BankSettlementsUnlinkResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case imported
    case posted
}