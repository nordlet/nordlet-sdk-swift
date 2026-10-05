import Foundation

public enum EuSmeThresholdGetDeclarationsResponseIntraEuStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case below
    case approaching
    case exceeded
}