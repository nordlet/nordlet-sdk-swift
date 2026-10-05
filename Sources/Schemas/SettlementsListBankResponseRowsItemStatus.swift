import Foundation

public enum SettlementsListBankResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case imported
    case posted
}