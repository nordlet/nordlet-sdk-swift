import Foundation

public enum CreatePartnersResponseLegalCountryClass: String, Codable, Hashable, CaseIterable, Sendable {
    case domestic
    case eu
    case nonEu = "non_eu"
}