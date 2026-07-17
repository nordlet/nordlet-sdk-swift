import Foundation

public struct PostV1AccountApiKeysListResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let name: String
    public let scopes: [String]
    public let lastUsedAt: Nullable<String>
    public let revokedAt: Nullable<String>
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        name: String,
        scopes: [String],
        lastUsedAt: Nullable<String>,
        revokedAt: Nullable<String>,
        createdAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.name = name
        self.scopes = scopes
        self.lastUsedAt = lastUsedAt
        self.revokedAt = revokedAt
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.scopes = try container.decode([String].self, forKey: .scopes)
        self.lastUsedAt = try container.decode(Nullable<String>.self, forKey: .lastUsedAt)
        self.revokedAt = try container.decode(Nullable<String>.self, forKey: .revokedAt)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.scopes, forKey: .scopes)
        try container.encode(self.lastUsedAt, forKey: .lastUsedAt)
        try container.encode(self.revokedAt, forKey: .revokedAt)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case scopes
        case lastUsedAt
        case revokedAt
        case createdAt
    }
}