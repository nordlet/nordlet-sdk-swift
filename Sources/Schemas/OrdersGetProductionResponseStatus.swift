import Foundation

public enum OrdersGetProductionResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case completed
}