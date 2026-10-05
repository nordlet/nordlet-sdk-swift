import Foundation

public enum TaxPaymentsUpdateDeclarationsRequestKind: String, Codable, Hashable, CaseIterable, Sendable {
    case advance
    case withholding
    case final
    case refund
}