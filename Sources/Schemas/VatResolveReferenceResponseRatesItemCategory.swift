import Foundation

public enum VatResolveReferenceResponseRatesItemCategory: String, Codable, Hashable, CaseIterable, Sendable {
    case standard
    case reduced
    case superReduced = "super_reduced"
    case parking
}