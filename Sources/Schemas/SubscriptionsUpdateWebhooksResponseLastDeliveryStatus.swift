import Foundation

public enum SubscriptionsUpdateWebhooksResponseLastDeliveryStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case pending
    case delivered
    case failed
}