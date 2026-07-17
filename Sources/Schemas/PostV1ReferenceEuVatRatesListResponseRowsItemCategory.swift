import Foundation

public enum PostV1ReferenceEuVatRatesListResponseRowsItemCategory: String, Codable, Hashable, CaseIterable, Sendable {
    case standard
    case reduced
    case superReduced = "super_reduced"
    case parking
}