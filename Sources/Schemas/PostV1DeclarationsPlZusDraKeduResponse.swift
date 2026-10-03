import Foundation

public struct PostV1DeclarationsPlZusDraKeduResponse: Codable, Hashable, Sendable {
    public let year: Int64
    public let month: Int64
    public let fileName: String
    public let xml: String
    public let source: String
    public let insured: [PostV1DeclarationsPlZusDraKeduResponseInsuredItem]
    public let warnings: [String]
    public let notes: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        year: Int64,
        month: Int64,
        fileName: String,
        xml: String,
        source: String,
        insured: [PostV1DeclarationsPlZusDraKeduResponseInsuredItem],
        warnings: [String],
        notes: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.year = year
        self.month = month
        self.fileName = fileName
        self.xml = xml
        self.source = source
        self.insured = insured
        self.warnings = warnings
        self.notes = notes
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.month = try container.decode(Int64.self, forKey: .month)
        self.fileName = try container.decode(String.self, forKey: .fileName)
        self.xml = try container.decode(String.self, forKey: .xml)
        self.source = try container.decode(String.self, forKey: .source)
        self.insured = try container.decode([PostV1DeclarationsPlZusDraKeduResponseInsuredItem].self, forKey: .insured)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.notes = try container.decode([String].self, forKey: .notes)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.month, forKey: .month)
        try container.encode(self.fileName, forKey: .fileName)
        try container.encode(self.xml, forKey: .xml)
        try container.encode(self.source, forKey: .source)
        try container.encode(self.insured, forKey: .insured)
        try container.encode(self.warnings, forKey: .warnings)
        try container.encode(self.notes, forKey: .notes)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case year
        case month
        case fileName
        case xml
        case source
        case insured
        case warnings
        case notes
    }
}