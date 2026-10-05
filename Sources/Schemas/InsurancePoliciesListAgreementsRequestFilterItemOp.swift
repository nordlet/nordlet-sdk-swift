import Foundation

public enum InsurancePoliciesListAgreementsRequestFilterItemOp: String, Codable, Hashable, CaseIterable, Sendable {
    case eq
    case ne
    case contains
    case gte
    case lte
    case `in`
}