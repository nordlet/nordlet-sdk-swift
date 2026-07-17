import Foundation

public enum PostV1CashOrdersGetResponseType: String, Codable, Hashable, CaseIterable, Sendable {
    case receipt
    case disbursement
}