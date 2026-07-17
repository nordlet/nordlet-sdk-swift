import Foundation

public enum PostV1CashOrdersCreateRequestType: String, Codable, Hashable, CaseIterable, Sendable {
    case receipt
    case disbursement
}