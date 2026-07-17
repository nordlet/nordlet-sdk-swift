import Foundation

public enum PostV1PartnersAddressesCreateRequestType: String, Codable, Hashable, CaseIterable, Sendable {
    case billing
    case shipping
    case registered
    case other
}