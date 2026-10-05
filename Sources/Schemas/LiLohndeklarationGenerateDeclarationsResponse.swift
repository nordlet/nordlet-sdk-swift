import Foundation

public struct LiLohndeklarationGenerateDeclarationsResponse: Codable, Hashable, Sendable {
    public let year: Int64
    public let fileName: String
    public let content: String
    public let rows: [LiLohndeklarationGenerateDeclarationsResponseRowsItem]
    public let warnings: [String]
    public let notes: [String]
    public let source: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        year: Int64,
        fileName: String,
        content: String,
        rows: [LiLohndeklarationGenerateDeclarationsResponseRowsItem],
        warnings: [String],
        notes: [String],
        source: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.year = year
        self.fileName = fileName
        self.content = content
        self.rows = rows
        self.warnings = warnings
        self.notes = notes
        self.source = source
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.fileName = try container.decode(String.self, forKey: .fileName)
        self.content = try container.decode(String.self, forKey: .content)
        self.rows = try container.decode([LiLohndeklarationGenerateDeclarationsResponseRowsItem].self, forKey: .rows)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.notes = try container.decode([String].self, forKey: .notes)
        self.source = try container.decode(String.self, forKey: .source)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.fileName, forKey: .fileName)
        try container.encode(self.content, forKey: .content)
        try container.encode(self.rows, forKey: .rows)
        try container.encode(self.warnings, forKey: .warnings)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.source, forKey: .source)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case year
        case fileName
        case content
        case rows
        case warnings
        case notes
        case source
    }
}