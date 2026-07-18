import Foundation

public enum PostV1SalesRecognitionModifyResponseApproach: String, Codable, Hashable, CaseIterable, Sendable {
    case prospective
    case cumulativeCatchUp = "cumulative_catch_up"
}