import Foundation

public enum PostV1AgreementsAgreementsUpdateRequestBillingPeriod: String, Codable, Hashable, CaseIterable, Sendable {
    case monthly
    case quarterly
    case annual
}