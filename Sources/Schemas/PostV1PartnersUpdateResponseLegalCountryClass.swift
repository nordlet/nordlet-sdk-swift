import Foundation

public enum PostV1PartnersUpdateResponseLegalCountryClass: String, Codable, Hashable, CaseIterable, Sendable {
    case lt
    case eu
    case nonEu = "non_eu"
}