import Foundation

public enum DebtRemindersUpcomingPartnersResponseRowsItemKind: String, Codable, Hashable, CaseIterable, Sendable {
    case beforeDue = "before_due"
    case overdue
}