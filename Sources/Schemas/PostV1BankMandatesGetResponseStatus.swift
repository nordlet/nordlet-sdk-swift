import Foundation

public enum PostV1BankMandatesGetResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case cancelled
    case completed
}