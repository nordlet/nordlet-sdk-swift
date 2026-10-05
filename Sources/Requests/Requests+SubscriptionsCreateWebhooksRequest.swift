import Foundation

extension Requests {
    public struct SubscriptionsCreateWebhooksRequest: Codable, Hashable, Sendable {
        public let url: String
        public let events: [SubscriptionsCreateWebhooksRequestEventsItem]
        public let secret: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            url: String,
            events: [SubscriptionsCreateWebhooksRequestEventsItem],
            secret: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.url = url
            self.events = events
            self.secret = secret
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.url = try container.decode(String.self, forKey: .url)
            self.events = try container.decode([SubscriptionsCreateWebhooksRequestEventsItem].self, forKey: .events)
            self.secret = try container.decodeIfPresent(String.self, forKey: .secret)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.url, forKey: .url)
            try container.encode(self.events, forKey: .events)
            try container.encodeIfPresent(self.secret, forKey: .secret)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case url
            case events
            case secret
        }
    }
}