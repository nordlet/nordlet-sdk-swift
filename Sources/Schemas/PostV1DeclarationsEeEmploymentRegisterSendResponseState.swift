import Foundation

public enum PostV1DeclarationsEeEmploymentRegisterSendResponseState: String, Codable, Hashable, CaseIterable, Sendable {
    case submitted
    case accepted
    case rejected
}