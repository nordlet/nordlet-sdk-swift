import Foundation

public enum PostV1WebhooksDeliveriesListResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case pending
    case delivered
    case failed
}