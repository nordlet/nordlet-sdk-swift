import Foundation

public struct PostV1AccountInvitesCreateResponse: Codable, Hashable, Sendable {
    public let id: String
    public let email: String
    public let role: String
    public let expiresAt: String
    public let inviteUrl: String
    public let emailSent: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        email: String,
        role: String,
        expiresAt: String,
        inviteUrl: String,
        emailSent: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.email = email
        self.role = role
        self.expiresAt = expiresAt
        self.inviteUrl = inviteUrl
        self.emailSent = emailSent
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.email = try container.decode(String.self, forKey: .email)
        self.role = try container.decode(String.self, forKey: .role)
        self.expiresAt = try container.decode(String.self, forKey: .expiresAt)
        self.inviteUrl = try container.decode(String.self, forKey: .inviteUrl)
        self.emailSent = try container.decode(Bool.self, forKey: .emailSent)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.email, forKey: .email)
        try container.encode(self.role, forKey: .role)
        try container.encode(self.expiresAt, forKey: .expiresAt)
        try container.encode(self.inviteUrl, forKey: .inviteUrl)
        try container.encode(self.emailSent, forKey: .emailSent)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case email
        case role
        case expiresAt
        case inviteUrl
        case emailSent
    }
}