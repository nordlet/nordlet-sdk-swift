import Foundation

public enum PostV1PartnersAddressesUpdateRequestType: String, Codable, Hashable, CaseIterable, Sendable {
    case billing
    case shipping
    case registered
    case other
}