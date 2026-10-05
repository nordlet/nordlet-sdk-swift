import Foundation

public struct VatSummaryReportsResponse: Codable, Hashable, Sendable {
    public let side: String
    public let fromDate: CalendarDate
    public let toDate: CalendarDate
    public let rows: [VatSummaryReportsResponseRowsItem]
    public let totals: VatSummaryReportsResponseTotals
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        side: String,
        fromDate: CalendarDate,
        toDate: CalendarDate,
        rows: [VatSummaryReportsResponseRowsItem],
        totals: VatSummaryReportsResponseTotals,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.side = side
        self.fromDate = fromDate
        self.toDate = toDate
        self.rows = rows
        self.totals = totals
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.side = try container.decode(String.self, forKey: .side)
        self.fromDate = try container.decode(CalendarDate.self, forKey: .fromDate)
        self.toDate = try container.decode(CalendarDate.self, forKey: .toDate)
        self.rows = try container.decode([VatSummaryReportsResponseRowsItem].self, forKey: .rows)
        self.totals = try container.decode(VatSummaryReportsResponseTotals.self, forKey: .totals)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.side, forKey: .side)
        try container.encode(self.fromDate, forKey: .fromDate)
        try container.encode(self.toDate, forKey: .toDate)
        try container.encode(self.rows, forKey: .rows)
        try container.encode(self.totals, forKey: .totals)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case side
        case fromDate
        case toDate
        case rows
        case totals
    }
}