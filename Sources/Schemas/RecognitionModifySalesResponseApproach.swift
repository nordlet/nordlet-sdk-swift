import Foundation

public enum RecognitionModifySalesResponseApproach: String, Codable, Hashable, CaseIterable, Sendable {
    case prospective
    case cumulativeCatchUp = "cumulative_catch_up"
}