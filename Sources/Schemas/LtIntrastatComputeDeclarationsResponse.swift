import Foundation

public struct LtIntrastatComputeDeclarationsResponse: Codable, Hashable, Sendable {
    public let flow: LtIntrastatComputeDeclarationsResponseFlow
    public let referencePeriod: String
    public let periodStart: String
    public let periodEnd: String
    public let fileName: String
    public let fileId: Nullable<String>
    public let rows: [LtIntrastatComputeDeclarationsResponseRowsItem]
    public let totals: LtIntrastatComputeDeclarationsResponseTotals
    public let counts: LtIntrastatComputeDeclarationsResponseCounts
    public let warnings: [String]
    public let notes: [String]
    public let xml: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        flow: LtIntrastatComputeDeclarationsResponseFlow,
        referencePeriod: String,
        periodStart: String,
        periodEnd: String,
        fileName: String,
        fileId: Nullable<String>,
        rows: [LtIntrastatComputeDeclarationsResponseRowsItem],
        totals: LtIntrastatComputeDeclarationsResponseTotals,
        counts: LtIntrastatComputeDeclarationsResponseCounts,
        warnings: [String],
        notes: [String],
        xml: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.flow = flow
        self.referencePeriod = referencePeriod
        self.periodStart = periodStart
        self.periodEnd = periodEnd
        self.fileName = fileName
        self.fileId = fileId
        self.rows = rows
        self.totals = totals
        self.counts = counts
        self.warnings = warnings
        self.notes = notes
        self.xml = xml
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.flow = try container.decode(LtIntrastatComputeDeclarationsResponseFlow.self, forKey: .flow)
        self.referencePeriod = try container.decode(String.self, forKey: .referencePeriod)
        self.periodStart = try container.decode(String.self, forKey: .periodStart)
        self.periodEnd = try container.decode(String.self, forKey: .periodEnd)
        self.fileName = try container.decode(String.self, forKey: .fileName)
        self.fileId = try container.decode(Nullable<String>.self, forKey: .fileId)
        self.rows = try container.decode([LtIntrastatComputeDeclarationsResponseRowsItem].self, forKey: .rows)
        self.totals = try container.decode(LtIntrastatComputeDeclarationsResponseTotals.self, forKey: .totals)
        self.counts = try container.decode(LtIntrastatComputeDeclarationsResponseCounts.self, forKey: .counts)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.notes = try container.decode([String].self, forKey: .notes)
        self.xml = try container.decode(String.self, forKey: .xml)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.flow, forKey: .flow)
        try container.encode(self.referencePeriod, forKey: .referencePeriod)
        try container.encode(self.periodStart, forKey: .periodStart)
        try container.encode(self.periodEnd, forKey: .periodEnd)
        try container.encode(self.fileName, forKey: .fileName)
        try container.encode(self.fileId, forKey: .fileId)
        try container.encode(self.rows, forKey: .rows)
        try container.encode(self.totals, forKey: .totals)
        try container.encode(self.counts, forKey: .counts)
        try container.encode(self.warnings, forKey: .warnings)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.xml, forKey: .xml)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case flow
        case referencePeriod
        case periodStart
        case periodEnd
        case fileName
        case fileId
        case rows
        case totals
        case counts
        case warnings
        case notes
        case xml
    }
}