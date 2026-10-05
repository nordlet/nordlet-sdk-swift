import Foundation

public enum UpdatePartnersRequestLegalCountryClass: String, Codable, Hashable, CaseIterable, Sendable {
    case lt
    case eu
    case nonEu = "non_eu"
}