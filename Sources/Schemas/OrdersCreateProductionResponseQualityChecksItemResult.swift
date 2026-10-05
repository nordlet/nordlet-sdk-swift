import Foundation

public enum OrdersCreateProductionResponseQualityChecksItemResult: String, Codable, Hashable, CaseIterable, Sendable {
    case pending
    case passed
    case failed
}