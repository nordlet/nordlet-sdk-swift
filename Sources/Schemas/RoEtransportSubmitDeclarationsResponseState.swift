import Foundation

public enum RoEtransportSubmitDeclarationsResponseState: String, Codable, Hashable, CaseIterable, Sendable {
    case submitted
    case accepted
    case rejected
}