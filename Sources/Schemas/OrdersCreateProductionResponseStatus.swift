import Foundation

public enum OrdersCreateProductionResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case completed
}