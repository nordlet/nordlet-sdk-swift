import Foundation

public enum SubmissionsCreateDeclarationsResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case generated
    case submitted
    case accepted
    case rejected
}