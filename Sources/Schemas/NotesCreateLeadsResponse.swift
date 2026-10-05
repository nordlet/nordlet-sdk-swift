import Foundation

public struct NotesCreateLeadsResponse: Codable, Hashable, Sendable {
    public let id: String
    public let leadId: String
    public let body: String
    public let authorId: Nullable<String>
    public let createdAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        leadId: String,
        body: String,
        authorId: Nullable<String>,
        createdAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.leadId = leadId
        self.body = body
        self.authorId = authorId
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.leadId = try container.decode(String.self, forKey: .leadId)
        self.body = try container.decode(String.self, forKey: .body)
        self.authorId = try container.decode(Nullable<String>.self, forKey: .authorId)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.leadId, forKey: .leadId)
        try container.encode(self.body, forKey: .body)
        try container.encode(self.authorId, forKey: .authorId)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case leadId
        case body
        case authorId
        case createdAt
    }
}