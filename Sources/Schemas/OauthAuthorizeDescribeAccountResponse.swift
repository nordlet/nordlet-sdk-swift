import Foundation

public struct OauthAuthorizeDescribeAccountResponse: Codable, Hashable, Sendable {
    public let clientName: String
    public let redirectUri: String
    public let redirectHost: String
    public let scopes: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        clientName: String,
        redirectUri: String,
        redirectHost: String,
        scopes: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.clientName = clientName
        self.redirectUri = redirectUri
        self.redirectHost = redirectHost
        self.scopes = scopes
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.clientName = try container.decode(String.self, forKey: .clientName)
        self.redirectUri = try container.decode(String.self, forKey: .redirectUri)
        self.redirectHost = try container.decode(String.self, forKey: .redirectHost)
        self.scopes = try container.decode([String].self, forKey: .scopes)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.clientName, forKey: .clientName)
        try container.encode(self.redirectUri, forKey: .redirectUri)
        try container.encode(self.redirectHost, forKey: .redirectHost)
        try container.encode(self.scopes, forKey: .scopes)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case clientName
        case redirectUri
        case redirectHost
        case scopes
    }
}