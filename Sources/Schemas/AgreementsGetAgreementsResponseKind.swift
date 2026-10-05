import Foundation

public enum AgreementsGetAgreementsResponseKind: String, Codable, Hashable, CaseIterable, Sendable {
    case customer
    case supplier
    case employment
    case bank
    case lease
    case insurance
    case other
}