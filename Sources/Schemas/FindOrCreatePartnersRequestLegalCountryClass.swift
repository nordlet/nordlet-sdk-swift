import Foundation

public enum FindOrCreatePartnersRequestLegalCountryClass: String, Codable, Hashable, CaseIterable, Sendable {
    case domestic
    case eu
    case nonEu = "non_eu"
}