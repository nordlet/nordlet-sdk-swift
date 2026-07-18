import Foundation

public enum PostV1ReferenceEuVatRatesSetOverridesRequestRatesItemCategory: String, Codable, Hashable, CaseIterable, Sendable {
    case standard
    case reduced
    case superReduced = "super_reduced"
    case parking
}