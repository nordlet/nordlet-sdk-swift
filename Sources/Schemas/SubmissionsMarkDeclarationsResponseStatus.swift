import Foundation

public enum SubmissionsMarkDeclarationsResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case generated
    case submitted
    case accepted
    case rejected
}