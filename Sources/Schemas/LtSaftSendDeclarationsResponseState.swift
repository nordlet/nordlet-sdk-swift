import Foundation

public enum LtSaftSendDeclarationsResponseState: String, Codable, Hashable, CaseIterable, Sendable {
    case submitted
    case accepted
    case rejected
}