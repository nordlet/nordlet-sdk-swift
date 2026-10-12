import Foundation

public enum SecuritiesGetBankResponseOperationsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case posted
    case notPosted = "not_posted"
}