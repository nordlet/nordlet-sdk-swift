import Foundation

public enum PostV1DeclarationsEuSmeThresholdGetResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case notApplicable = "not_applicable"
    case below
    case approaching
    case exceeded
    case unknown
}