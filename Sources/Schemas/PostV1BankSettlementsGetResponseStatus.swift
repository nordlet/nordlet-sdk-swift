import Foundation

public enum PostV1BankSettlementsGetResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case imported
    case posted
}