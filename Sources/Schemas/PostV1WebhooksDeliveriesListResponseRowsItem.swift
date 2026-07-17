import Foundation

public struct PostV1WebhooksDeliveriesListResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let subscriptionId: String
    public let eventType: String
    public let status: PostV1WebhooksDeliveriesListResponseRowsItemStatus
    public let attempts: Int64
    public let lastError: Nullable<String>
    public let createdAt: String
    public let deliveredAt: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        subscriptionId: String,
        eventType: String,
        status: PostV1WebhooksDeliveriesListResponseRowsItemStatus,
        attempts: Int64,
        lastError: Nullable<String>,
        createdAt: String,
        deliveredAt: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.subscriptionId = subscriptionId
        self.eventType = eventType
        self.status = status
        self.attempts = attempts
        self.lastError = lastError
        self.createdAt = createdAt
        self.deliveredAt = deliveredAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.subscriptionId = try container.decode(String.self, forKey: .subscriptionId)
        self.eventType = try container.decode(String.self, forKey: .eventType)
        self.status = try container.decode(PostV1WebhooksDeliveriesListResponseRowsItemStatus.self, forKey: .status)
        self.attempts = try container.decode(Int64.self, forKey: .attempts)
        self.lastError = try container.decode(Nullable<String>.self, forKey: .lastError)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.deliveredAt = try container.decode(Nullable<String>.self, forKey: .deliveredAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.subscriptionId, forKey: .subscriptionId)
        try container.encode(self.eventType, forKey: .eventType)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.attempts, forKey: .attempts)
        try container.encode(self.lastError, forKey: .lastError)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.deliveredAt, forKey: .deliveredAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case subscriptionId
        case eventType
        case status
        case attempts
        case lastError
        case createdAt
        case deliveredAt
    }
}