import Foundation

public enum PostV1DeclarationsTaxPaymentsUpdateResponseKind: String, Codable, Hashable, CaseIterable, Sendable {
    case advance
    case withholding
    case final
    case refund
}