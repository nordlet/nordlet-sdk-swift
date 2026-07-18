import Foundation

public enum PostV1AgreementsAgreementsCreateRequestBillingPeriod: String, Codable, Hashable, CaseIterable, Sendable {
    case monthly
    case quarterly
    case annual
}