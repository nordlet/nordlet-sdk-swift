import Foundation

public struct PostV1AccountInvitesListResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let email: String
    public let role: String
    public let expiresAt: String
    public let createdAt: String
    public let expired: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        email: String,
        role: String,
        expiresAt: String,
        createdAt: String,
        expired: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.email = email
        self.role = role
        self.expiresAt = expiresAt
        self.createdAt = createdAt
        self.expired = expired
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.email = try container.decode(String.self, forKey: .email)
        self.role = try container.decode(String.self, forKey: .role)
        self.expiresAt = try container.decode(String.self, forKey: .expiresAt)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.expired = try container.decode(Bool.self, forKey: .expired)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.email, forKey: .email)
        try container.encode(self.role, forKey: .role)
        try container.encode(self.expiresAt, forKey: .expiresAt)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.expired, forKey: .expired)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case email
        case role
        case expiresAt
        case createdAt
        case expired
    }
}