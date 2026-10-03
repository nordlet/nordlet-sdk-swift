import Foundation

public struct PostV1DeclarationsPlVatUeGenerateResponse: Codable, Hashable, Sendable {
    public let periodStart: String
    public let periodEnd: String
    public let nip: String
    public let companyName: String
    public let rows: [PostV1DeclarationsPlVatUeGenerateResponseRowsItem]
    public let totals: [PostV1DeclarationsPlVatUeGenerateResponseTotalsItem]
    public let warnings: [String]
    public let notes: [String]
    public let source: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        periodStart: String,
        periodEnd: String,
        nip: String,
        companyName: String,
        rows: [PostV1DeclarationsPlVatUeGenerateResponseRowsItem],
        totals: [PostV1DeclarationsPlVatUeGenerateResponseTotalsItem],
        warnings: [String],
        notes: [String],
        source: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.periodStart = periodStart
        self.periodEnd = periodEnd
        self.nip = nip
        self.companyName = companyName
        self.rows = rows
        self.totals = totals
        self.warnings = warnings
        self.notes = notes
        self.source = source
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.periodStart = try container.decode(String.self, forKey: .periodStart)
        self.periodEnd = try container.decode(String.self, forKey: .periodEnd)
        self.nip = try container.decode(String.self, forKey: .nip)
        self.companyName = try container.decode(String.self, forKey: .companyName)
        self.rows = try container.decode([PostV1DeclarationsPlVatUeGenerateResponseRowsItem].self, forKey: .rows)
        self.totals = try container.decode([PostV1DeclarationsPlVatUeGenerateResponseTotalsItem].self, forKey: .totals)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.notes = try container.decode([String].self, forKey: .notes)
        self.source = try container.decode(String.self, forKey: .source)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.periodStart, forKey: .periodStart)
        try container.encode(self.periodEnd, forKey: .periodEnd)
        try container.encode(self.nip, forKey: .nip)
        try container.encode(self.companyName, forKey: .companyName)
        try container.encode(self.rows, forKey: .rows)
        try container.encode(self.totals, forKey: .totals)
        try container.encode(self.warnings, forKey: .warnings)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.source, forKey: .source)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case periodStart
        case periodEnd
        case nip
        case companyName
        case rows
        case totals
        case warnings
        case notes
        case source
    }
}