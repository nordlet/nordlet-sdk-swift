import Foundation

public enum AddressesCreatePartnersRequestType: String, Codable, Hashable, CaseIterable, Sendable {
    case billing
    case shipping
    case registered
    case other
}