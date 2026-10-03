import Foundation

public enum PostV1DeclarationsTaxPaymentsListResponseRowsItemKind: String, Codable, Hashable, CaseIterable, Sendable {
    case advance
    case withholding
    case final
    case refund
}