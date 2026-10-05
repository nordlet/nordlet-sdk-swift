import Foundation

public enum CompaniesProfileAccountResponseVatPeriod: String, Codable, Hashable, CaseIterable, Sendable {
    case monthly
    case bimonthly
    case quarterly
    case semiannual
    case annual
}