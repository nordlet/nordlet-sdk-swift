import Foundation

public enum CreatePartnersRequestLegalCountryClass: String, Codable, Hashable, CaseIterable, Sendable {
    case lt
    case eu
    case nonEu = "non_eu"
}