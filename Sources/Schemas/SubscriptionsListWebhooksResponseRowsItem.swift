import Foundation

public struct SubscriptionsListWebhooksResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let url: String
    public let events: [String]
    public let isActive: Bool
    public let consecutiveFailures: Int64
    public let lastDeliveryStatus: Nullable<SubscriptionsListWebhooksResponseRowsItemLastDeliveryStatus>
    public let lastDeliveryAt: Nullable<Date>
    public let pausedAt: Nullable<Date>
    public let createdAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        url: String,
        events: [String],
        isActive: Bool,
        consecutiveFailures: Int64,
        lastDeliveryStatus: Nullable<SubscriptionsListWebhooksResponseRowsItemLastDeliveryStatus>,
        lastDeliveryAt: Nullable<Date>,
        pausedAt: Nullable<Date>,
        createdAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.url = url
        self.events = events
        self.isActive = isActive
        self.consecutiveFailures = consecutiveFailures
        self.lastDeliveryStatus = lastDeliveryStatus
        self.lastDeliveryAt = lastDeliveryAt
        self.pausedAt = pausedAt
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.url = try container.decode(String.self, forKey: .url)
        self.events = try container.decode([String].self, forKey: .events)
        self.isActive = try container.decode(Bool.self, forKey: .isActive)
        self.consecutiveFailures = try container.decode(Int64.self, forKey: .consecutiveFailures)
        self.lastDeliveryStatus = try container.decode(Nullable<SubscriptionsListWebhooksResponseRowsItemLastDeliveryStatus>.self, forKey: .lastDeliveryStatus)
        self.lastDeliveryAt = try container.decode(Nullable<Date>.self, forKey: .lastDeliveryAt)
        self.pausedAt = try container.decode(Nullable<Date>.self, forKey: .pausedAt)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.url, forKey: .url)
        try container.encode(self.events, forKey: .events)
        try container.encode(self.isActive, forKey: .isActive)
        try container.encode(self.consecutiveFailures, forKey: .consecutiveFailures)
        try container.encode(self.lastDeliveryStatus, forKey: .lastDeliveryStatus)
        try container.encode(self.lastDeliveryAt, forKey: .lastDeliveryAt)
        try container.encode(self.pausedAt, forKey: .pausedAt)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case url
        case events
        case isActive
        case consecutiveFailures
        case lastDeliveryStatus
        case lastDeliveryAt
        case pausedAt
        case createdAt
    }
}