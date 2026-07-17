import Foundation

public enum PostV1TransportWaybillsGetResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case issued
    case cancelled
}