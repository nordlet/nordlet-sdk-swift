import Foundation

public struct UploadLinksCreateFilesResponse: Codable, Hashable, Sendable {
    public let url: String
    public let fileId: String
    public let storageKey: String
    public let expiresAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        url: String,
        fileId: String,
        storageKey: String,
        expiresAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.url = url
        self.fileId = fileId
        self.storageKey = storageKey
        self.expiresAt = expiresAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.url = try container.decode(String.self, forKey: .url)
        self.fileId = try container.decode(String.self, forKey: .fileId)
        self.storageKey = try container.decode(String.self, forKey: .storageKey)
        self.expiresAt = try container.decode(Date.self, forKey: .expiresAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.url, forKey: .url)
        try container.encode(self.fileId, forKey: .fileId)
        try container.encode(self.storageKey, forKey: .storageKey)
        try container.encode(self.expiresAt, forKey: .expiresAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case url
        case fileId
        case storageKey
        case expiresAt
    }
}