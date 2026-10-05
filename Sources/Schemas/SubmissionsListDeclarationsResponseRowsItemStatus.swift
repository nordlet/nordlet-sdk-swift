import Foundation

public enum SubmissionsListDeclarationsResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case generated
    case submitted
    case accepted
    case rejected
}