import Foundation

public enum EeEmploymentRegisterSendDeclarationsResponseState: String, Codable, Hashable, CaseIterable, Sendable {
    case submitted
    case accepted
    case rejected
}