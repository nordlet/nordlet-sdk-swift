import Foundation

public struct PosSalesReportsResponse: Codable, Hashable, Sendable {
    public let fromDate: CalendarDate
    public let toDate: CalendarDate
    public let rows: [PosSalesReportsResponseRowsItem]
    public let byRate: [PosSalesReportsResponseByRateItem]
    public let totals: PosSalesReportsResponseTotals
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        fromDate: CalendarDate,
        toDate: CalendarDate,
        rows: [PosSalesReportsResponseRowsItem],
        byRate: [PosSalesReportsResponseByRateItem],
        totals: PosSalesReportsResponseTotals,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.fromDate = fromDate
        self.toDate = toDate
        self.rows = rows
        self.byRate = byRate
        self.totals = totals
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.fromDate = try container.decode(CalendarDate.self, forKey: .fromDate)
        self.toDate = try container.decode(CalendarDate.self, forKey: .toDate)
        self.rows = try container.decode([PosSalesReportsResponseRowsItem].self, forKey: .rows)
        self.byRate = try container.decode([PosSalesReportsResponseByRateItem].self, forKey: .byRate)
        self.totals = try container.decode(PosSalesReportsResponseTotals.self, forKey: .totals)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.fromDate, forKey: .fromDate)
        try container.encode(self.toDate, forKey: .toDate)
        try container.encode(self.rows, forKey: .rows)
        try container.encode(self.byRate, forKey: .byRate)
        try container.encode(self.totals, forKey: .totals)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case fromDate
        case toDate
        case rows
        case byRate
        case totals
    }
}