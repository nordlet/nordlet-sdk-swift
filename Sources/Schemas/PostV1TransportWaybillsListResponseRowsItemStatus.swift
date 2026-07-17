import Foundation

public enum PostV1TransportWaybillsListResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case issued
    case cancelled
}