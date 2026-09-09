import Foundation

public enum PostV1PartnersFindOrCreateResponsePartnerLegalCountryClass: String, Codable, Hashable, CaseIterable, Sendable {
    case lt
    case eu
    case nonEu = "non_eu"
}