import Foundation

public enum PostV1BankMandatesUpdateResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case cancelled
    case completed
}