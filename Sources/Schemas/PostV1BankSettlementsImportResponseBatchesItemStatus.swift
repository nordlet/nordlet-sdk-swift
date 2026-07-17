import Foundation

public enum PostV1BankSettlementsImportResponseBatchesItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case imported
    case posted
}