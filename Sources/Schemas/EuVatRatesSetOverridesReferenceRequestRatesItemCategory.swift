import Foundation

public enum EuVatRatesSetOverridesReferenceRequestRatesItemCategory: String, Codable, Hashable, CaseIterable, Sendable {
    case standard
    case reduced
    case superReduced = "super_reduced"
    case parking
}