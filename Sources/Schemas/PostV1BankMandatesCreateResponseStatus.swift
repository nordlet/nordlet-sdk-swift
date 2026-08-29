import Foundation

public enum PostV1BankMandatesCreateResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case cancelled
    case completed
}