import Foundation

public enum OrdersListEcommerceResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case new
    case reserved
    case fulfilled
    case cancelled
}