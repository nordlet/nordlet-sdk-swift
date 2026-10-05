import Foundation

public enum QualityChecksListProductionResponseRowsItemResult: String, Codable, Hashable, CaseIterable, Sendable {
    case pending
    case passed
    case failed
}