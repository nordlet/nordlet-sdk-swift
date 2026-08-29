import Foundation

public enum PostV1BankMandatesCancelResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case cancelled
    case completed
}