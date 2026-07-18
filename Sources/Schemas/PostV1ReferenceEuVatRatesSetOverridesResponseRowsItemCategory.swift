import Foundation

public enum PostV1ReferenceEuVatRatesSetOverridesResponseRowsItemCategory: String, Codable, Hashable, CaseIterable, Sendable {
    case standard
    case reduced
    case superReduced = "super_reduced"
    case parking
}