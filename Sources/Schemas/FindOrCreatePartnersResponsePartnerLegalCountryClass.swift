import Foundation

public enum FindOrCreatePartnersResponsePartnerLegalCountryClass: String, Codable, Hashable, CaseIterable, Sendable {
    case domestic
    case eu
    case nonEu = "non_eu"
}