import Foundation

public struct PlIntrastatGenerateDeclarationsResponse: Codable, Hashable, Sendable {
    public let flow: PlIntrastatGenerateDeclarationsResponseFlow
    public let referencePeriod: String
    public let periodStart: String
    public let periodEnd: String
    public let nip: String
    public let companyName: String
    public let detailedThreshold: Bool
    public let rows: [PlIntrastatGenerateDeclarationsResponseRowsItem]
    public let totals: PlIntrastatGenerateDeclarationsResponseTotals
    public let counts: PlIntrastatGenerateDeclarationsResponseCounts
    public let warnings: [String]
    public let notes: [String]
    public let source: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        flow: PlIntrastatGenerateDeclarationsResponseFlow,
        referencePeriod: String,
        periodStart: String,
        periodEnd: String,
        nip: String,
        companyName: String,
        detailedThreshold: Bool,
        rows: [PlIntrastatGenerateDeclarationsResponseRowsItem],
        totals: PlIntrastatGenerateDeclarationsResponseTotals,
        counts: PlIntrastatGenerateDeclarationsResponseCounts,
        warnings: [String],
        notes: [String],
        source: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.flow = flow
        self.referencePeriod = referencePeriod
        self.periodStart = periodStart
        self.periodEnd = periodEnd
        self.nip = nip
        self.companyName = companyName
        self.detailedThreshold = detailedThreshold
        self.rows = rows
        self.totals = totals
        self.counts = counts
        self.warnings = warnings
        self.notes = notes
        self.source = source
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.flow = try container.decode(PlIntrastatGenerateDeclarationsResponseFlow.self, forKey: .flow)
        self.referencePeriod = try container.decode(String.self, forKey: .referencePeriod)
        self.periodStart = try container.decode(String.self, forKey: .periodStart)
        self.periodEnd = try container.decode(String.self, forKey: .periodEnd)
        self.nip = try container.decode(String.self, forKey: .nip)
        self.companyName = try container.decode(String.self, forKey: .companyName)
        self.detailedThreshold = try container.decode(Bool.self, forKey: .detailedThreshold)
        self.rows = try container.decode([PlIntrastatGenerateDeclarationsResponseRowsItem].self, forKey: .rows)
        self.totals = try container.decode(PlIntrastatGenerateDeclarationsResponseTotals.self, forKey: .totals)
        self.counts = try container.decode(PlIntrastatGenerateDeclarationsResponseCounts.self, forKey: .counts)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.notes = try container.decode([String].self, forKey: .notes)
        self.source = try container.decode(String.self, forKey: .source)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.flow, forKey: .flow)
        try container.encode(self.referencePeriod, forKey: .referencePeriod)
        try container.encode(self.periodStart, forKey: .periodStart)
        try container.encode(self.periodEnd, forKey: .periodEnd)
        try container.encode(self.nip, forKey: .nip)
        try container.encode(self.companyName, forKey: .companyName)
        try container.encode(self.detailedThreshold, forKey: .detailedThreshold)
        try container.encode(self.rows, forKey: .rows)
        try container.encode(self.totals, forKey: .totals)
        try container.encode(self.counts, forKey: .counts)
        try container.encode(self.warnings, forKey: .warnings)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.source, forKey: .source)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case flow
        case referencePeriod
        case periodStart
        case periodEnd
        case nip
        case companyName
        case detailedThreshold
        case rows
        case totals
        case counts
        case warnings
        case notes
        case source
    }
}