import Foundation

public enum UpdatePartnersResponseLegalCountryClass: String, Codable, Hashable, CaseIterable, Sendable {
    case domestic
    case eu
    case nonEu = "non_eu"
}