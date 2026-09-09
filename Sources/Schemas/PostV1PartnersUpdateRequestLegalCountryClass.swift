import Foundation

public enum PostV1PartnersUpdateRequestLegalCountryClass: String, Codable, Hashable, CaseIterable, Sendable {
    case lt
    case eu
    case nonEu = "non_eu"
}