import Foundation

public enum EuVatRatesListReferenceResponseRowsItemCategory: String, Codable, Hashable, CaseIterable, Sendable {
    case standard
    case reduced
    case superReduced = "super_reduced"
    case parking
}