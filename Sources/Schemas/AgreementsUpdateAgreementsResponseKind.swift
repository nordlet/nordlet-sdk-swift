import Foundation

public enum AgreementsUpdateAgreementsResponseKind: String, Codable, Hashable, CaseIterable, Sendable {
    case customer
    case supplier
    case employment
    case bank
    case lease
    case insurance
    case other
}