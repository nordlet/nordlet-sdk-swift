import Foundation

public struct ApiKeysRotateAccountResponse: Codable, Hashable, Sendable {
    public let id: String
    public let name: String
    public let scopes: [String]
    public let key: String
    public let expiresAt: Nullable<Date>
    public let replacedKeyId: String
    public let replacedKeyExpiresAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        name: String,
        scopes: [String],
        key: String,
        expiresAt: Nullable<Date>,
        replacedKeyId: String,
        replacedKeyExpiresAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.name = name
        self.scopes = scopes
        self.key = key
        self.expiresAt = expiresAt
        self.replacedKeyId = replacedKeyId
        self.replacedKeyExpiresAt = replacedKeyExpiresAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.scopes = try container.decode([String].self, forKey: .scopes)
        self.key = try container.decode(String.self, forKey: .key)
        self.expiresAt = try container.decode(Nullable<Date>.self, forKey: .expiresAt)
        self.replacedKeyId = try container.decode(String.self, forKey: .replacedKeyId)
        self.replacedKeyExpiresAt = try container.decode(Date.self, forKey: .replacedKeyExpiresAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.scopes, forKey: .scopes)
        try container.encode(self.key, forKey: .key)
        try container.encode(self.expiresAt, forKey: .expiresAt)
        try container.encode(self.replacedKeyId, forKey: .replacedKeyId)
        try container.encode(self.replacedKeyExpiresAt, forKey: .replacedKeyExpiresAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case scopes
        case key
        case expiresAt
        case replacedKeyId
        case replacedKeyExpiresAt
    }
}