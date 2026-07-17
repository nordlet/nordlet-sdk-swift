import Foundation

public enum PostV1ReferenceVatResolveResponseRatesItemCategory: String, Codable, Hashable, CaseIterable, Sendable {
    case standard
    case reduced
    case superReduced = "super_reduced"
    case parking
}