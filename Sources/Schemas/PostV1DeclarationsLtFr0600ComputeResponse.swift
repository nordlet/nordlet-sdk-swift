import Foundation

public struct PostV1DeclarationsLtFr0600ComputeResponse: Codable, Hashable, Sendable {
    public let periodStart: String
    public let periodEnd: String
    public let deductionPercent: Int64
    public let fields: [PostV1DeclarationsLtFr0600ComputeResponseFieldsItem]
    public let breakdown: [PostV1DeclarationsLtFr0600ComputeResponseBreakdownItem]
    public let counts: PostV1DeclarationsLtFr0600ComputeResponseCounts
    public let warnings: [String]
    public let notes: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        periodStart: String,
        periodEnd: String,
        deductionPercent: Int64,
        fields: [PostV1DeclarationsLtFr0600ComputeResponseFieldsItem],
        breakdown: [PostV1DeclarationsLtFr0600ComputeResponseBreakdownItem],
        counts: PostV1DeclarationsLtFr0600ComputeResponseCounts,
        warnings: [String],
        notes: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.periodStart = periodStart
        self.periodEnd = periodEnd
        self.deductionPercent = deductionPercent
        self.fields = fields
        self.breakdown = breakdown
        self.counts = counts
        self.warnings = warnings
        self.notes = notes
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.periodStart = try container.decode(String.self, forKey: .periodStart)
        self.periodEnd = try container.decode(String.self, forKey: .periodEnd)
        self.deductionPercent = try container.decode(Int64.self, forKey: .deductionPercent)
        self.fields = try container.decode([PostV1DeclarationsLtFr0600ComputeResponseFieldsItem].self, forKey: .fields)
        self.breakdown = try container.decode([PostV1DeclarationsLtFr0600ComputeResponseBreakdownItem].self, forKey: .breakdown)
        self.counts = try container.decode(PostV1DeclarationsLtFr0600ComputeResponseCounts.self, forKey: .counts)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.notes = try container.decode([String].self, forKey: .notes)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.periodStart, forKey: .periodStart)
        try container.encode(self.periodEnd, forKey: .periodEnd)
        try container.encode(self.deductionPercent, forKey: .deductionPercent)
        try container.encode(self.fields, forKey: .fields)
        try container.encode(self.breakdown, forKey: .breakdown)
        try container.encode(self.counts, forKey: .counts)
        try container.encode(self.warnings, forKey: .warnings)
        try container.encode(self.notes, forKey: .notes)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case periodStart
        case periodEnd
        case deductionPercent
        case fields
        case breakdown
        case counts
        case warnings
        case notes
    }
}