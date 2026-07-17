import Foundation

public struct PostV1AuditListResponseRowsItem: Codable, Hashable, Sendable {
    public let id: Int64
    public let actorType: PostV1AuditListResponseRowsItemActorType
    public let actorId: Nullable<String>
    public let action: String
    public let entity: String
    public let entityId: Nullable<String>
    public let diff: Nullable<JSONValue>
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: Int64,
        actorType: PostV1AuditListResponseRowsItemActorType,
        actorId: Nullable<String>,
        action: String,
        entity: String,
        entityId: Nullable<String>,
        diff: Nullable<JSONValue>,
        createdAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.actorType = actorType
        self.actorId = actorId
        self.action = action
        self.entity = entity
        self.entityId = entityId
        self.diff = diff
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(Int64.self, forKey: .id)
        self.actorType = try container.decode(PostV1AuditListResponseRowsItemActorType.self, forKey: .actorType)
        self.actorId = try container.decode(Nullable<String>.self, forKey: .actorId)
        self.action = try container.decode(String.self, forKey: .action)
        self.entity = try container.decode(String.self, forKey: .entity)
        self.entityId = try container.decode(Nullable<String>.self, forKey: .entityId)
        self.diff = try container.decode(Nullable<JSONValue>.self, forKey: .diff)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.actorType, forKey: .actorType)
        try container.encode(self.actorId, forKey: .actorId)
        try container.encode(self.action, forKey: .action)
        try container.encode(self.entity, forKey: .entity)
        try container.encode(self.entityId, forKey: .entityId)
        try container.encode(self.diff, forKey: .diff)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case actorType
        case actorId
        case action
        case entity
        case entityId
        case diff
        case createdAt
    }
}