import Foundation

public enum AgreementsListAgreementsResponseRowsItemKind: String, Codable, Hashable, CaseIterable, Sendable {
    case customer
    case supplier
    case employment
    case bank
    case lease
    case insurance
    case other
}