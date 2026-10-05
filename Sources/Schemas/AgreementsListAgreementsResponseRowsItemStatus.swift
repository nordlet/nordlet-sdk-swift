import Foundation

public enum AgreementsListAgreementsResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case active
    case expired
    case terminated
}