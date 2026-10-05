import Foundation

public enum CompaniesCreateAccountRequestVatPeriod: String, Codable, Hashable, CaseIterable, Sendable {
    case monthly
    case bimonthly
    case quarterly
    case semiannual
    case annual
}