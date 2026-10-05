import Foundation

public enum AgreementsCreateAgreementsRequestBillingPeriod: String, Codable, Hashable, CaseIterable, Sendable {
    case monthly
    case quarterly
    case annual
}