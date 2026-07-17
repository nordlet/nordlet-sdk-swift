import Foundation

public enum PostV1TransportWaybillsCreateResponseStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case issued
    case cancelled
}