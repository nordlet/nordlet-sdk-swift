import Foundation

public struct ApiKeysListAccountResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let name: String
    public let scopes: [String]
    public let lastUsedAt: Nullable<Date>
    public let expiresAt: Nullable<Date>
    public let replacedByKeyId: Nullable<String>
    public let revokedAt: Nullable<Date>
    public let createdAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        name: String,
        scopes: [String],
        lastUsedAt: Nullable<Date>,
        expiresAt: Nullable<Date>,
        replacedByKeyId: Nullable<String>,
        revokedAt: Nullable<Date>,
        createdAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.name = name
        self.scopes = scopes
        self.lastUsedAt = lastUsedAt
        self.expiresAt = expiresAt
        self.replacedByKeyId = replacedByKeyId
        self.revokedAt = revokedAt
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.scopes = try container.decode([String].self, forKey: .scopes)
        self.lastUsedAt = try container.decode(Nullable<Date>.self, forKey: .lastUsedAt)
        self.expiresAt = try container.decode(Nullable<Date>.self, forKey: .expiresAt)
        self.replacedByKeyId = try container.decode(Nullable<String>.self, forKey: .replacedByKeyId)
        self.revokedAt = try container.decode(Nullable<Date>.self, forKey: .revokedAt)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.scopes, forKey: .scopes)
        try container.encode(self.lastUsedAt, forKey: .lastUsedAt)
        try container.encode(self.expiresAt, forKey: .expiresAt)
        try container.encode(self.replacedByKeyId, forKey: .replacedByKeyId)
        try container.encode(self.revokedAt, forKey: .revokedAt)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case scopes
        case lastUsedAt
        case expiresAt
        case replacedByKeyId
        case revokedAt
        case createdAt
    }
}