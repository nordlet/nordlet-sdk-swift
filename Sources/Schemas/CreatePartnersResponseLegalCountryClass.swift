import Foundation

public enum CreatePartnersResponseLegalCountryClass: String, Codable, Hashable, CaseIterable, Sendable {
    case lt
    case eu
    case nonEu = "non_eu"
}