import Foundation

public struct LtGpm312ComputeDeclarationsResponse: Codable, Hashable, Sendable {
    public let year: Int64
    public let payoutTiming: LtGpm312ComputeDeclarationsResponsePayoutTiming
    public let payoutFrom: LtGpm312ComputeDeclarationsResponsePayoutFrom
    public let payoutTo: LtGpm312ComputeDeclarationsResponsePayoutTo
    public let registrationNumber: String
    public let companyName: String
    public let rows: [LtGpm312ComputeDeclarationsResponseRowsItem]
    public let totals: LtGpm312ComputeDeclarationsResponseTotals
    public let runsFound: Int64
    public let warnings: [String]
    public let notes: [String]
    public let source: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        year: Int64,
        payoutTiming: LtGpm312ComputeDeclarationsResponsePayoutTiming,
        payoutFrom: LtGpm312ComputeDeclarationsResponsePayoutFrom,
        payoutTo: LtGpm312ComputeDeclarationsResponsePayoutTo,
        registrationNumber: String,
        companyName: String,
        rows: [LtGpm312ComputeDeclarationsResponseRowsItem],
        totals: LtGpm312ComputeDeclarationsResponseTotals,
        runsFound: Int64,
        warnings: [String],
        notes: [String],
        source: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.year = year
        self.payoutTiming = payoutTiming
        self.payoutFrom = payoutFrom
        self.payoutTo = payoutTo
        self.registrationNumber = registrationNumber
        self.companyName = companyName
        self.rows = rows
        self.totals = totals
        self.runsFound = runsFound
        self.warnings = warnings
        self.notes = notes
        self.source = source
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.payoutTiming = try container.decode(LtGpm312ComputeDeclarationsResponsePayoutTiming.self, forKey: .payoutTiming)
        self.payoutFrom = try container.decode(LtGpm312ComputeDeclarationsResponsePayoutFrom.self, forKey: .payoutFrom)
        self.payoutTo = try container.decode(LtGpm312ComputeDeclarationsResponsePayoutTo.self, forKey: .payoutTo)
        self.registrationNumber = try container.decode(String.self, forKey: .registrationNumber)
        self.companyName = try container.decode(String.self, forKey: .companyName)
        self.rows = try container.decode([LtGpm312ComputeDeclarationsResponseRowsItem].self, forKey: .rows)
        self.totals = try container.decode(LtGpm312ComputeDeclarationsResponseTotals.self, forKey: .totals)
        self.runsFound = try container.decode(Int64.self, forKey: .runsFound)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.notes = try container.decode([String].self, forKey: .notes)
        self.source = try container.decode(String.self, forKey: .source)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.payoutTiming, forKey: .payoutTiming)
        try container.encode(self.payoutFrom, forKey: .payoutFrom)
        try container.encode(self.payoutTo, forKey: .payoutTo)
        try container.encode(self.registrationNumber, forKey: .registrationNumber)
        try container.encode(self.companyName, forKey: .companyName)
        try container.encode(self.rows, forKey: .rows)
        try container.encode(self.totals, forKey: .totals)
        try container.encode(self.runsFound, forKey: .runsFound)
        try container.encode(self.warnings, forKey: .warnings)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.source, forKey: .source)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case year
        case payoutTiming
        case payoutFrom
        case payoutTo
        case registrationNumber
        case companyName
        case rows
        case totals
        case runsFound
        case warnings
        case notes
        case source
    }
}