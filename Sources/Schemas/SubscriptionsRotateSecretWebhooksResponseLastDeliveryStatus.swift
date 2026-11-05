import Foundation

public enum SubscriptionsRotateSecretWebhooksResponseLastDeliveryStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case pending
    case delivered
    case failed
}