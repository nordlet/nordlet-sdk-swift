import Foundation

public enum FindOrCreatePartnersRequestLegalCountryClass: String, Codable, Hashable, CaseIterable, Sendable {
    case lt
    case eu
    case nonEu = "non_eu"
}