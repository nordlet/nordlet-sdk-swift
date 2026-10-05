import Foundation

public enum SubmissionsRetryDeclarationsResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case generated
    case submitted
    case accepted
    case rejected
}