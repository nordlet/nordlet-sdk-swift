import Foundation

public struct PostV1DeclarationsPlJpkV7MGenerateResponse: Codable, Hashable, Sendable {
    public let fileName: String
    public let xml: String
    public let periodStart: String
    public let periodEnd: String
    public let declaration: [PostV1DeclarationsPlJpkV7MGenerateResponseDeclarationItem]
    public let counts: PostV1DeclarationsPlJpkV7MGenerateResponseCounts
    public let warnings: [String]
    public let notes: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        fileName: String,
        xml: String,
        periodStart: String,
        periodEnd: String,
        declaration: [PostV1DeclarationsPlJpkV7MGenerateResponseDeclarationItem],
        counts: PostV1DeclarationsPlJpkV7MGenerateResponseCounts,
        warnings: [String],
        notes: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.fileName = fileName
        self.xml = xml
        self.periodStart = periodStart
        self.periodEnd = periodEnd
        self.declaration = declaration
        self.counts = counts
        self.warnings = warnings
        self.notes = notes
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.fileName = try container.decode(String.self, forKey: .fileName)
        self.xml = try container.decode(String.self, forKey: .xml)
        self.periodStart = try container.decode(String.self, forKey: .periodStart)
        self.periodEnd = try container.decode(String.self, forKey: .periodEnd)
        self.declaration = try container.decode([PostV1DeclarationsPlJpkV7MGenerateResponseDeclarationItem].self, forKey: .declaration)
        self.counts = try container.decode(PostV1DeclarationsPlJpkV7MGenerateResponseCounts.self, forKey: .counts)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.notes = try container.decode([String].self, forKey: .notes)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.fileName, forKey: .fileName)
        try container.encode(self.xml, forKey: .xml)
        try container.encode(self.periodStart, forKey: .periodStart)
        try container.encode(self.periodEnd, forKey: .periodEnd)
        try container.encode(self.declaration, forKey: .declaration)
        try container.encode(self.counts, forKey: .counts)
        try container.encode(self.warnings, forKey: .warnings)
        try container.encode(self.notes, forKey: .notes)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case fileName
        case xml
        case periodStart
        case periodEnd
        case declaration
        case counts
        case warnings
        case notes
    }
}