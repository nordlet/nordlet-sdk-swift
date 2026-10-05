import Foundation

public enum GetPartnersResponseLegalCountryClass: String, Codable, Hashable, CaseIterable, Sendable {
    case lt
    case eu
    case nonEu = "non_eu"
}