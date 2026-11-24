import Foundation

public struct JournalTemplatesCreateLedgerResponse: Codable, Hashable, Sendable {
    public let id: String
    public let name: String
    public let description: Nullable<String>
    public let lines: [JournalTemplatesCreateLedgerResponseLinesItem]
    public let createdAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        name: String,
        description: Nullable<String>,
        lines: [JournalTemplatesCreateLedgerResponseLinesItem],
        createdAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.name = name
        self.description = description
        self.lines = lines
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.description = try container.decode(Nullable<String>.self, forKey: .description)
        self.lines = try container.decode([JournalTemplatesCreateLedgerResponseLinesItem].self, forKey: .lines)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.lines, forKey: .lines)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case description
        case lines
        case createdAt
    }
}