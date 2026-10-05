import Foundation

public enum OrdersGetCashResponseType: String, Codable, Hashable, CaseIterable, Sendable {
    case receipt
    case disbursement
}