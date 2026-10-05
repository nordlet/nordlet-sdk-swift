import Foundation

public enum SubscriptionsListWebhooksResponseRowsItemLastDeliveryStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case pending
    case delivered
    case failed
}