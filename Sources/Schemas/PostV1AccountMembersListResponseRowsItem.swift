import Foundation

public struct PostV1AccountMembersListResponseRowsItem: Codable, Hashable, Sendable {
    public let userId: String
    public let email: String
    public let name: Nullable<String>
    public let role: String
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        userId: String,
        email: String,
        name: Nullable<String>,
        role: String,
        createdAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.userId = userId
        self.email = email
        self.name = name
        self.role = role
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.userId = try container.decode(String.self, forKey: .userId)
        self.email = try container.decode(String.self, forKey: .email)
        self.name = try container.decode(Nullable<String>.self, forKey: .name)
        self.role = try container.decode(String.self, forKey: .role)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.userId, forKey: .userId)
        try container.encode(self.email, forKey: .email)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.role, forKey: .role)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case userId
        case email
        case name
        case role
        case createdAt
    }
}