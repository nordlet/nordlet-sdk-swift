import Foundation

public struct PostV1DeclarationsDkSelskabsskatGenerateResponse: Codable, Hashable, Sendable {
    public let year: Int64
    public let periodStart: String
    public let periodEnd: String
    public let cvrNummer: String
    public let fileName: String
    public let xml: String
    public let fields: [PostV1DeclarationsDkSelskabsskatGenerateResponseFieldsItem]
    public let warnings: [String]
    public let notes: [String]
    public let source: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        year: Int64,
        periodStart: String,
        periodEnd: String,
        cvrNummer: String,
        fileName: String,
        xml: String,
        fields: [PostV1DeclarationsDkSelskabsskatGenerateResponseFieldsItem],
        warnings: [String],
        notes: [String],
        source: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.year = year
        self.periodStart = periodStart
        self.periodEnd = periodEnd
        self.cvrNummer = cvrNummer
        self.fileName = fileName
        self.xml = xml
        self.fields = fields
        self.warnings = warnings
        self.notes = notes
        self.source = source
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.periodStart = try container.decode(String.self, forKey: .periodStart)
        self.periodEnd = try container.decode(String.self, forKey: .periodEnd)
        self.cvrNummer = try container.decode(String.self, forKey: .cvrNummer)
        self.fileName = try container.decode(String.self, forKey: .fileName)
        self.xml = try container.decode(String.self, forKey: .xml)
        self.fields = try container.decode([PostV1DeclarationsDkSelskabsskatGenerateResponseFieldsItem].self, forKey: .fields)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.notes = try container.decode([String].self, forKey: .notes)
        self.source = try container.decode(String.self, forKey: .source)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.periodStart, forKey: .periodStart)
        try container.encode(self.periodEnd, forKey: .periodEnd)
        try container.encode(self.cvrNummer, forKey: .cvrNummer)
        try container.encode(self.fileName, forKey: .fileName)
        try container.encode(self.xml, forKey: .xml)
        try container.encode(self.fields, forKey: .fields)
        try container.encode(self.warnings, forKey: .warnings)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.source, forKey: .source)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case year
        case periodStart
        case periodEnd
        case cvrNummer
        case fileName
        case xml
        case fields
        case warnings
        case notes
        case source
    }
}