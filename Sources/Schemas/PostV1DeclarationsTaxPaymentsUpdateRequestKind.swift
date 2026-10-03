import Foundation

public enum PostV1DeclarationsTaxPaymentsUpdateRequestKind: String, Codable, Hashable, CaseIterable, Sendable {
    case advance
    case withholding
    case final
    case refund
}