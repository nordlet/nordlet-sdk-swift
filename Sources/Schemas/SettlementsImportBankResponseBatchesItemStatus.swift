import Foundation

public enum SettlementsImportBankResponseBatchesItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case imported
    case posted
}