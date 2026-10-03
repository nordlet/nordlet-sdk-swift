import Foundation

public enum PostV1DeclarationsRoEtransportSubmitResponseState: String, Codable, Hashable, CaseIterable, Sendable {
    case submitted
    case accepted
    case rejected
}