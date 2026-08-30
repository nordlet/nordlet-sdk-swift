import Foundation

public struct PostV1AccountExportResponseAuditEntriesItem: Codable, Hashable, Sendable {
    public let id: Int64
    public let companyId: String
    public let action: String
    public let entity: String
    public let entityId: Nullable<String>
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: Int64,
        companyId: String,
        action: String,
        entity: String,
        entityId: Nullable<String>,
        createdAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.companyId = companyId
        self.action = action
        self.entity = entity
        self.entityId = entityId
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(Int64.self, forKey: .id)
        self.companyId = try container.decode(String.self, forKey: .companyId)
        self.action = try container.decode(String.self, forKey: .action)
        self.entity = try container.decode(String.self, forKey: .entity)
        self.entityId = try container.decode(Nullable<String>.self, forKey: .entityId)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.companyId, forKey: .companyId)
        try container.encode(self.action, forKey: .action)
        try container.encode(self.entity, forKey: .entity)
        try container.encode(self.entityId, forKey: .entityId)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case companyId
        case action
        case entity
        case entityId
        case createdAt
    }
}