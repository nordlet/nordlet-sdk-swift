import Foundation

public enum QualityChecksAddProductionResponseResult: String, Codable, Hashable, CaseIterable, Sendable {
    case pending
    case passed
    case failed
}