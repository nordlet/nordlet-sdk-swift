import Foundation

public enum SubscriptionsCreateWebhooksResponseLastDeliveryStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case pending
    case delivered
    case failed
}