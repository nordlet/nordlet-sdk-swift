import Foundation

public enum SubmissionsConfirmDeclarationsResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case generated
    case submitted
    case accepted
    case rejected
}