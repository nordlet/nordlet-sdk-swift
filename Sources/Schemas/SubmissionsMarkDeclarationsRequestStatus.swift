import Foundation

public enum SubmissionsMarkDeclarationsRequestStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case submitted
    case accepted
    case rejected
}