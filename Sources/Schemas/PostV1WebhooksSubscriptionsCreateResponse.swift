import Foundation

public struct PostV1WebhooksSubscriptionsCreateResponse: Codable, Hashable, Sendable {
    public let id: String
    public let url: String
    public let events: [String]
    public let isActive: Bool
    public let createdAt: String
    public let secret: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        url: String,
        events: [String],
        isActive: Bool,
        createdAt: String,
        secret: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.url = url
        self.events = events
        self.isActive = isActive
        self.createdAt = createdAt
        self.secret = secret
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.url = try container.decode(String.self, forKey: .url)
        self.events = try container.decode([String].self, forKey: .events)
        self.isActive = try container.decode(Bool.self, forKey: .isActive)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.secret = try container.decode(String.self, forKey: .secret)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.url, forKey: .url)
        try container.encode(self.events, forKey: .events)
        try container.encode(self.isActive, forKey: .isActive)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.secret, forKey: .secret)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case url
        case events
        case isActive
        case createdAt
        case secret
    }
}