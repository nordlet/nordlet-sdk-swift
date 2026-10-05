import Foundation

public enum FindOrCreatePartnersResponsePartnerLegalCountryClass: String, Codable, Hashable, CaseIterable, Sendable {
    case lt
    case eu
    case nonEu = "non_eu"
}