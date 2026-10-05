import Foundation

public enum DeliveriesListWebhooksResponseRowsItemStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case pending
    case delivered
    case failed
}