import Foundation

/// With `fiscalYearWeekday`: `last` ends the year on the last such weekday of `fiscalYearEndMonth`, `nearest` on the one nearest the last day of that month
public enum CompaniesCreateAccountRequestFiscalYearWeekRule: String, Codable, Hashable, CaseIterable, Sendable {
    case last
    case nearest
}