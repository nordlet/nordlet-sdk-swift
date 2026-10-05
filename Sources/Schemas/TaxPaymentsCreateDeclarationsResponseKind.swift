import Foundation

public enum TaxPaymentsCreateDeclarationsResponseKind: String, Codable, Hashable, CaseIterable, Sendable {
    case advance
    case withholding
    case final
    case refund
}