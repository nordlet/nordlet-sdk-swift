import Foundation

public enum RecognitionModifySalesRequestApproach: String, Codable, Hashable, CaseIterable, Sendable {
    case prospective
    case cumulativeCatchUp = "cumulative_catch_up"
}