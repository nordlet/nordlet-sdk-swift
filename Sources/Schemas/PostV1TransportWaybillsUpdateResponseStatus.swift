import Foundation

public enum PostV1TransportWaybillsUpdateResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case issued
    case cancelled
}