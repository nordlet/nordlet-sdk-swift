import Foundation

public struct ExportAccountResponseOauthGrantsItem: Codable, Hashable, Sendable {
    public let apiKeyId: String
    public let clientId: String
    public let clientName: String
    public let createdAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        apiKeyId: String,
        clientId: String,
        clientName: String,
        createdAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.apiKeyId = apiKeyId
        self.clientId = clientId
        self.clientName = clientName
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.apiKeyId = try container.decode(String.self, forKey: .apiKeyId)
        self.clientId = try container.decode(String.self, forKey: .clientId)
        self.clientName = try container.decode(String.self, forKey: .clientName)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.apiKeyId, forKey: .apiKeyId)
        try container.encode(self.clientId, forKey: .clientId)
        try container.encode(self.clientName, forKey: .clientName)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case apiKeyId
        case clientId
        case clientName
        case createdAt
    }
}