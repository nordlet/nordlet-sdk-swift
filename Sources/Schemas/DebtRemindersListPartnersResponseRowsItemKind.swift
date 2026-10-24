import Foundation

public enum DebtRemindersListPartnersResponseRowsItemKind: String, Codable, Hashable, CaseIterable, Sendable {
    case beforeDue = "before_due"
    case overdue
}