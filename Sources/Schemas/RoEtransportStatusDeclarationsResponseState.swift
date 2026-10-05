import Foundation

public enum RoEtransportStatusDeclarationsResponseState: String, Codable, Hashable, CaseIterable, Sendable {
    case submitted
    case accepted
    case rejected
}