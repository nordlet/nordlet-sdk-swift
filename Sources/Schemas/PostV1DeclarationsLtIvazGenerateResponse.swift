import Foundation

public struct PostV1DeclarationsLtIvazGenerateResponse: Codable, Hashable, Sendable {
    public let fileName: String
    public let fileId: Nullable<String>
    public let counts: PostV1DeclarationsLtIvazGenerateResponseCounts
    public let warnings: [String]
    public let notes: [String]
    public let xml: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        fileName: String,
        fileId: Nullable<String>,
        counts: PostV1DeclarationsLtIvazGenerateResponseCounts,
        warnings: [String],
        notes: [String],
        xml: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.fileName = fileName
        self.fileId = fileId
        self.counts = counts
        self.warnings = warnings
        self.notes = notes
        self.xml = xml
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.fileName = try container.decode(String.self, forKey: .fileName)
        self.fileId = try container.decode(Nullable<String>.self, forKey: .fileId)
        self.counts = try container.decode(PostV1DeclarationsLtIvazGenerateResponseCounts.self, forKey: .counts)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.notes = try container.decode([String].self, forKey: .notes)
        self.xml = try container.decode(String.self, forKey: .xml)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.fileName, forKey: .fileName)
        try container.encode(self.fileId, forKey: .fileId)
        try container.encode(self.counts, forKey: .counts)
        try container.encode(self.warnings, forKey: .warnings)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.xml, forKey: .xml)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case fileName
        case fileId
        case counts
        case warnings
        case notes
        case xml
    }
}