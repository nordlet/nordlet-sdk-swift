import Foundation

public enum TaxPaymentsUpdateDeclarationsResponseKind: String, Codable, Hashable, CaseIterable, Sendable {
    case advance
    case withholding
    case final
    case refund
}