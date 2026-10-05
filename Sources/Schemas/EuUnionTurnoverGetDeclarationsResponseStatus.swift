import Foundation

public enum EuUnionTurnoverGetDeclarationsResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case below
    case approaching
    case exceeded
    case notApplicable = "not_applicable"
}