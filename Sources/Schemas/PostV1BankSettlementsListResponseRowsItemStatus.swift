import Foundation

public enum PostV1BankSettlementsListResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case imported
    case posted
}