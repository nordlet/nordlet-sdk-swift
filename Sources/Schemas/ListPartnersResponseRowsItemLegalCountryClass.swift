import Foundation

public enum ListPartnersResponseRowsItemLegalCountryClass: String, Codable, Hashable, CaseIterable, Sendable {
    case domestic
    case eu
    case nonEu = "non_eu"
}