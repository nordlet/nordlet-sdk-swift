import Foundation

public struct PostV1DeclarationsPlJpkFaGenerateResponse: Codable, Hashable, Sendable {
    public let fileName: String
    public let xml: String
    public let periodStart: String
    public let periodEnd: String
    public let warnings: [String]
    public let notes: [String]
    public let source: String
    public let counts: PostV1DeclarationsPlJpkFaGenerateResponseCounts
    public let totals: PostV1DeclarationsPlJpkFaGenerateResponseTotals
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        fileName: String,
        xml: String,
        periodStart: String,
        periodEnd: String,
        warnings: [String],
        notes: [String],
        source: String,
        counts: PostV1DeclarationsPlJpkFaGenerateResponseCounts,
        totals: PostV1DeclarationsPlJpkFaGenerateResponseTotals,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.fileName = fileName
        self.xml = xml
        self.periodStart = periodStart
        self.periodEnd = periodEnd
        self.warnings = warnings
        self.notes = notes
        self.source = source
        self.counts = counts
        self.totals = totals
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.fileName = try container.decode(String.self, forKey: .fileName)
        self.xml = try container.decode(String.self, forKey: .xml)
        self.periodStart = try container.decode(String.self, forKey: .periodStart)
        self.periodEnd = try container.decode(String.self, forKey: .periodEnd)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.notes = try container.decode([String].self, forKey: .notes)
        self.source = try container.decode(String.self, forKey: .source)
        self.counts = try container.decode(PostV1DeclarationsPlJpkFaGenerateResponseCounts.self, forKey: .counts)
        self.totals = try container.decode(PostV1DeclarationsPlJpkFaGenerateResponseTotals.self, forKey: .totals)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.fileName, forKey: .fileName)
        try container.encode(self.xml, forKey: .xml)
        try container.encode(self.periodStart, forKey: .periodStart)
        try container.encode(self.periodEnd, forKey: .periodEnd)
        try container.encode(self.warnings, forKey: .warnings)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.source, forKey: .source)
        try container.encode(self.counts, forKey: .counts)
        try container.encode(self.totals, forKey: .totals)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case fileName
        case xml
        case periodStart
        case periodEnd
        case warnings
        case notes
        case source
        case counts
        case totals
    }
}