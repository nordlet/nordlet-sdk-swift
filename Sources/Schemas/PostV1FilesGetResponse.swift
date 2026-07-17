import Foundation

public struct PostV1FilesGetResponse: Codable, Hashable, Sendable {
    public let id: String
    public let entity: String
    public let entityId: String
    public let fileName: String
    public let mimeType: String
    public let sizeBytes: Int64
    public let sha256: String
    public let createdAt: String
    public let content: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        entity: String,
        entityId: String,
        fileName: String,
        mimeType: String,
        sizeBytes: Int64,
        sha256: String,
        createdAt: String,
        content: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.entity = entity
        self.entityId = entityId
        self.fileName = fileName
        self.mimeType = mimeType
        self.sizeBytes = sizeBytes
        self.sha256 = sha256
        self.createdAt = createdAt
        self.content = content
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.entity = try container.decode(String.self, forKey: .entity)
        self.entityId = try container.decode(String.self, forKey: .entityId)
        self.fileName = try container.decode(String.self, forKey: .fileName)
        self.mimeType = try container.decode(String.self, forKey: .mimeType)
        self.sizeBytes = try container.decode(Int64.self, forKey: .sizeBytes)
        self.sha256 = try container.decode(String.self, forKey: .sha256)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.content = try container.decode(String.self, forKey: .content)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.entity, forKey: .entity)
        try container.encode(self.entityId, forKey: .entityId)
        try container.encode(self.fileName, forKey: .fileName)
        try container.encode(self.mimeType, forKey: .mimeType)
        try container.encode(self.sizeBytes, forKey: .sizeBytes)
        try container.encode(self.sha256, forKey: .sha256)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.content, forKey: .content)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case entity
        case entityId
        case fileName
        case mimeType
        case sizeBytes
        case sha256
        case createdAt
        case content
    }
}