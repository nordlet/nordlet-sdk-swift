import Foundation

public enum EuSmeThresholdGetDeclarationsResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case notApplicable = "not_applicable"
    case below
    case approaching
    case exceeded
    case unknown
}