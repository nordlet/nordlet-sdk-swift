import Foundation

public enum OrdersCompleteProductionResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case completed
}