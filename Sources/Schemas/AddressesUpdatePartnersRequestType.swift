import Foundation

public enum AddressesUpdatePartnersRequestType: String, Codable, Hashable, CaseIterable, Sendable {
    case billing
    case shipping
    case registered
    case other
}