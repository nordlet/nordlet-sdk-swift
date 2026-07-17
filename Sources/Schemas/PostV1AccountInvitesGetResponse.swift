import Foundation

public struct PostV1AccountInvitesGetResponse: Codable, Hashable, Sendable {
    public let email: String
    public let role: String
    public let companyName: String
    public let expired: Bool
    public let userExists: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        email: String,
        role: String,
        companyName: String,
        expired: Bool,
        userExists: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.email = email
        self.role = role
        self.companyName = companyName
        self.expired = expired
        self.userExists = userExists
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.email = try container.decode(String.self, forKey: .email)
        self.role = try container.decode(String.self, forKey: .role)
        self.companyName = try container.decode(String.self, forKey: .companyName)
        self.expired = try container.decode(Bool.self, forKey: .expired)
        self.userExists = try container.decode(Bool.self, forKey: .userExists)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.email, forKey: .email)
        try container.encode(self.role, forKey: .role)
        try container.encode(self.companyName, forKey: .companyName)
        try container.encode(self.expired, forKey: .expired)
        try container.encode(self.userExists, forKey: .userExists)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case email
        case role
        case companyName
        case expired
        case userExists
    }
}