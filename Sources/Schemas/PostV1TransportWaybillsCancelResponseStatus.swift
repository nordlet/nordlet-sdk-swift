import Foundation

public enum PostV1TransportWaybillsCancelResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case issued
    case cancelled
}