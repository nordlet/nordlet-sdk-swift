import Foundation

public enum RunsListPayrollResponseRowsItemFrequency: String, Codable, Hashable, CaseIterable, Sendable {
    case monthly
    case semimonthly
    case fourWeekly = "four_weekly"
    case biweekly
    case weekly
}