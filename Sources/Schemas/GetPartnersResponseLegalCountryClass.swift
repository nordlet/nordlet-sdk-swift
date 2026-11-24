import Foundation

public enum GetPartnersResponseLegalCountryClass: String, Codable, Hashable, CaseIterable, Sendable {
    case domestic
    case eu
    case nonEu = "non_eu"
}