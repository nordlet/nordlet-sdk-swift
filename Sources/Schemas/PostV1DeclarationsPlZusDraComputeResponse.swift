import Foundation

public struct PostV1DeclarationsPlZusDraComputeResponse: Codable, Hashable, Sendable {
    public let year: Int64
    public let month: Int64
    public let source: String
    public let runStatus: Nullable<String>
    public let insuredCount: Int64
    public let rows: [PostV1DeclarationsPlZusDraComputeResponseRowsItem]
    public let socialTotal: String
    public let healthTotal: String
    public let fundsTotal: String
    public let total: String
    public let warnings: [String]
    public let notes: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        year: Int64,
        month: Int64,
        source: String,
        runStatus: Nullable<String>,
        insuredCount: Int64,
        rows: [PostV1DeclarationsPlZusDraComputeResponseRowsItem],
        socialTotal: String,
        healthTotal: String,
        fundsTotal: String,
        total: String,
        warnings: [String],
        notes: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.year = year
        self.month = month
        self.source = source
        self.runStatus = runStatus
        self.insuredCount = insuredCount
        self.rows = rows
        self.socialTotal = socialTotal
        self.healthTotal = healthTotal
        self.fundsTotal = fundsTotal
        self.total = total
        self.warnings = warnings
        self.notes = notes
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.month = try container.decode(Int64.self, forKey: .month)
        self.source = try container.decode(String.self, forKey: .source)
        self.runStatus = try container.decode(Nullable<String>.self, forKey: .runStatus)
        self.insuredCount = try container.decode(Int64.self, forKey: .insuredCount)
        self.rows = try container.decode([PostV1DeclarationsPlZusDraComputeResponseRowsItem].self, forKey: .rows)
        self.socialTotal = try container.decode(String.self, forKey: .socialTotal)
        self.healthTotal = try container.decode(String.self, forKey: .healthTotal)
        self.fundsTotal = try container.decode(String.self, forKey: .fundsTotal)
        self.total = try container.decode(String.self, forKey: .total)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.notes = try container.decode([String].self, forKey: .notes)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.month, forKey: .month)
        try container.encode(self.source, forKey: .source)
        try container.encode(self.runStatus, forKey: .runStatus)
        try container.encode(self.insuredCount, forKey: .insuredCount)
        try container.encode(self.rows, forKey: .rows)
        try container.encode(self.socialTotal, forKey: .socialTotal)
        try container.encode(self.healthTotal, forKey: .healthTotal)
        try container.encode(self.fundsTotal, forKey: .fundsTotal)
        try container.encode(self.total, forKey: .total)
        try container.encode(self.warnings, forKey: .warnings)
        try container.encode(self.notes, forKey: .notes)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case year
        case month
        case source
        case runStatus
        case insuredCount
        case rows
        case socialTotal
        case healthTotal
        case fundsTotal
        case total
        case warnings
        case notes
    }
}