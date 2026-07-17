import Foundation

public enum PostV1CashOrdersCreateResponseType: String, Codable, Hashable, CaseIterable, Sendable {
    case receipt
    case disbursement
}