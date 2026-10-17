import Foundation

public enum SecuritiesOperationsListBankResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case posted
    case notPosted = "not_posted"
}