import Foundation

public enum PostV1DeclarationsEuSmeThresholdGetResponseIntraEuStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case below
    case approaching
    case exceeded
}