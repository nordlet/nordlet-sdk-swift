import Foundation

/// TuMS § 49 lg 2 limit used this month for 5020: `socialTax` 3 % of the personalised social-taxed payments of the year (5030), `profit` 10 % of the last financial year’s profit (5040, 5050); the choice of December is final
public enum EeTsdAnnexesGetDeclarationsResponseInputAnnex5Limit: String, Codable, Hashable, CaseIterable, Sendable {
    case socialTax
    case profit
}