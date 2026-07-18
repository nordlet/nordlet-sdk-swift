import Foundation

public enum PostV1SalesRecognitionModifyRequestApproach: String, Codable, Hashable, CaseIterable, Sendable {
    case prospective
    case cumulativeCatchUp = "cumulative_catch_up"
}