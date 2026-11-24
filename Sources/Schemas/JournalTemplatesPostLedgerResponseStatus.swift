import Foundation

public enum JournalTemplatesPostLedgerResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case posted
}