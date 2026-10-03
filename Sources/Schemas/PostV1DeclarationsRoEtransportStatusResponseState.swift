import Foundation

public enum PostV1DeclarationsRoEtransportStatusResponseState: String, Codable, Hashable, CaseIterable, Sendable {
    case submitted
    case accepted
    case rejected
}