import Foundation

public struct PostV1AccountInvitesAcceptResponse: Codable, Hashable, Sendable {
    public let token: String
    public let expiresAt: String
    public let user: PostV1AccountInvitesAcceptResponseUser
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        token: String,
        expiresAt: String,
        user: PostV1AccountInvitesAcceptResponseUser,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.token = token
        self.expiresAt = expiresAt
        self.user = user
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.token = try container.decode(String.self, forKey: .token)
        self.expiresAt = try container.decode(String.self, forKey: .expiresAt)
        self.user = try container.decode(PostV1AccountInvitesAcceptResponseUser.self, forKey: .user)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.token, forKey: .token)
        try container.encode(self.expiresAt, forKey: .expiresAt)
        try container.encode(self.user, forKey: .user)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case token
        case expiresAt
        case user
    }
}