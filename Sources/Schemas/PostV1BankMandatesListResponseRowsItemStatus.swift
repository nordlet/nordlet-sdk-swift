import Foundation

public enum PostV1BankMandatesListResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case cancelled
    case completed
}