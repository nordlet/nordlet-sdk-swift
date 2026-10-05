import Foundation

public enum TaxPaymentsListDeclarationsResponseRowsItemKind: String, Codable, Hashable, CaseIterable, Sendable {
    case advance
    case withholding
    case final
    case refund
}