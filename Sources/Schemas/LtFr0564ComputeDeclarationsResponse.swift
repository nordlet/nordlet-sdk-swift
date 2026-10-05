import Foundation

public struct LtFr0564ComputeDeclarationsResponse: Codable, Hashable, Sendable {
    public let year: Int64
    public let month: Int64
    public let periodStart: String
    public let periodEnd: String
    public let registrationNumber: String
    public let vatCode: String
    public let companyName: String
    public let rows: [LtFr0564ComputeDeclarationsResponseRowsItem]
    public let totals: LtFr0564ComputeDeclarationsResponseTotals
    public let counts: LtFr0564ComputeDeclarationsResponseCounts
    public let warnings: [String]
    public let notes: [String]
    public let source: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        year: Int64,
        month: Int64,
        periodStart: String,
        periodEnd: String,
        registrationNumber: String,
        vatCode: String,
        companyName: String,
        rows: [LtFr0564ComputeDeclarationsResponseRowsItem],
        totals: LtFr0564ComputeDeclarationsResponseTotals,
        counts: LtFr0564ComputeDeclarationsResponseCounts,
        warnings: [String],
        notes: [String],
        source: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.year = year
        self.month = month
        self.periodStart = periodStart
        self.periodEnd = periodEnd
        self.registrationNumber = registrationNumber
        self.vatCode = vatCode
        self.companyName = companyName
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
        self.year = try container.decode(Int64.self, forKey: .year)
        self.month = try container.decode(Int64.self, forKey: .month)
        self.periodStart = try container.decode(String.self, forKey: .periodStart)
        self.periodEnd = try container.decode(String.self, forKey: .periodEnd)
        self.registrationNumber = try container.decode(String.self, forKey: .registrationNumber)
        self.vatCode = try container.decode(String.self, forKey: .vatCode)
        self.companyName = try container.decode(String.self, forKey: .companyName)
        self.rows = try container.decode([LtFr0564ComputeDeclarationsResponseRowsItem].self, forKey: .rows)
        self.totals = try container.decode(LtFr0564ComputeDeclarationsResponseTotals.self, forKey: .totals)
        self.counts = try container.decode(LtFr0564ComputeDeclarationsResponseCounts.self, forKey: .counts)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.notes = try container.decode([String].self, forKey: .notes)
        self.source = try container.decode(String.self, forKey: .source)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.month, forKey: .month)
        try container.encode(self.periodStart, forKey: .periodStart)
        try container.encode(self.periodEnd, forKey: .periodEnd)
        try container.encode(self.registrationNumber, forKey: .registrationNumber)
        try container.encode(self.vatCode, forKey: .vatCode)
        try container.encode(self.companyName, forKey: .companyName)
        try container.encode(self.rows, forKey: .rows)
        try container.encode(self.totals, forKey: .totals)
        try container.encode(self.counts, forKey: .counts)
        try container.encode(self.warnings, forKey: .warnings)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.source, forKey: .source)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case year
        case month
        case periodStart
        case periodEnd
        case registrationNumber
        case vatCode
        case companyName
        case rows
        case totals
        case counts
        case warnings
        case notes
        case source
    }
}