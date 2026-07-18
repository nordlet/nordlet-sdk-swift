import Foundation

public enum PostV1DeclarationsEuUnionTurnoverGetResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case below
    case approaching
    case exceeded
    case notApplicable = "not_applicable"
}