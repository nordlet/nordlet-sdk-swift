import Foundation

public struct PostV1AccountApiKeysCreateResponse: Codable, Hashable, Sendable {
    public let id: String
    public let name: String
    public let scopes: [String]
    public let key: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        name: String,
        scopes: [String],
        key: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.name = name
        self.scopes = scopes
        self.key = key
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.scopes = try container.decode([String].self, forKey: .scopes)
        self.key = try container.decode(String.self, forKey: .key)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.scopes, forKey: .scopes)
        try container.encode(self.key, forKey: .key)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case scopes
        case key
    }
}