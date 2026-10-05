import Foundation

public enum OrdersCreateCashResponseType: String, Codable, Hashable, CaseIterable, Sendable {
    case receipt
    case disbursement
}