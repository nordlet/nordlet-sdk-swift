import Foundation

public struct PostV1DeclarationsLtSaftGenerateResponse: Codable, Hashable, Sendable {
    public let fileName: String
    public let fileId: Nullable<String>
    public let periodStart: String
    public let periodEnd: String
    public let counts: PostV1DeclarationsLtSaftGenerateResponseCounts
    public let warnings: [String]
    public let xml: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        fileName: String,
        fileId: Nullable<String>,
        periodStart: String,
        periodEnd: String,
        counts: PostV1DeclarationsLtSaftGenerateResponseCounts,
        warnings: [String],
        xml: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.fileName = fileName
        self.fileId = fileId
        self.periodStart = periodStart
        self.periodEnd = periodEnd
        self.counts = counts
        self.warnings = warnings
        self.xml = xml
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.fileName = try container.decode(String.self, forKey: .fileName)
        self.fileId = try container.decode(Nullable<String>.self, forKey: .fileId)
        self.periodStart = try container.decode(String.self, forKey: .periodStart)
        self.periodEnd = try container.decode(String.self, forKey: .periodEnd)
        self.counts = try container.decode(PostV1DeclarationsLtSaftGenerateResponseCounts.self, forKey: .counts)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.xml = try container.decode(String.self, forKey: .xml)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.fileName, forKey: .fileName)
        try container.encode(self.fileId, forKey: .fileId)
        try container.encode(self.periodStart, forKey: .periodStart)
        try container.encode(self.periodEnd, forKey: .periodEnd)
        try container.encode(self.counts, forKey: .counts)
        try container.encode(self.warnings, forKey: .warnings)
        try container.encode(self.xml, forKey: .xml)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case fileName
        case fileId
        case periodStart
        case periodEnd
        case counts
        case warnings
        case xml
    }
}