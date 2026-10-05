import Foundation

public enum MandatesListBankResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case cancelled
    case completed
}