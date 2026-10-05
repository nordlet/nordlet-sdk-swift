import Foundation

public enum OrdersGetProductionResponseQualityChecksItemResult: String, Codable, Hashable, CaseIterable, Sendable {
    case pending
    case passed
    case failed
}