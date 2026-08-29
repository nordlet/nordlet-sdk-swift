import Foundation

public struct PostV1BankFeedsConnectionsStartResponse: Codable, Hashable, Sendable {
    public let connectionId: String
    public let reference: String
    public let url: String
    public let expiresAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        connectionId: String,
        reference: String,
        url: String,
        expiresAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.connectionId = connectionId
        self.reference = reference
        self.url = url
        self.expiresAt = expiresAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.connectionId = try container.decode(String.self, forKey: .connectionId)
        self.reference = try container.decode(String.self, forKey: .reference)
        self.url = try container.decode(String.self, forKey: .url)
        self.expiresAt = try container.decode(String.self, forKey: .expiresAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.connectionId, forKey: .connectionId)
        try container.encode(self.reference, forKey: .reference)
        try container.encode(self.url, forKey: .url)
        try container.encode(self.expiresAt, forKey: .expiresAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case connectionId
        case reference
        case url
        case expiresAt
    }
}