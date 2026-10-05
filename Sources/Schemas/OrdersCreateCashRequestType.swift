import Foundation

public enum OrdersCreateCashRequestType: String, Codable, Hashable, CaseIterable, Sendable {
    case receipt
    case disbursement
}