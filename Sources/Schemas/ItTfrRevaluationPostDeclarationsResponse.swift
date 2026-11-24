import Foundation

public struct ItTfrRevaluationPostDeclarationsResponse: Codable, Hashable, Sendable {
    public let id: String
    public let year: Int64
    public let date: CalendarDate
    public let rate: String
    public let rows: [ItTfrRevaluationPostDeclarationsResponseRowsItem]
    public let totals: ItTfrRevaluationPostDeclarationsResponseTotals
    public let warnings: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        year: Int64,
        date: CalendarDate,
        rate: String,
        rows: [ItTfrRevaluationPostDeclarationsResponseRowsItem],
        totals: ItTfrRevaluationPostDeclarationsResponseTotals,
        warnings: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.year = year
        self.date = date
        self.rate = rate
        self.rows = rows
        self.totals = totals
        self.warnings = warnings
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.date = try container.decode(CalendarDate.self, forKey: .date)
        self.rate = try container.decode(String.self, forKey: .rate)
        self.rows = try container.decode([ItTfrRevaluationPostDeclarationsResponseRowsItem].self, forKey: .rows)
        self.totals = try container.decode(ItTfrRevaluationPostDeclarationsResponseTotals.self, forKey: .totals)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.date, forKey: .date)
        try container.encode(self.rate, forKey: .rate)
        try container.encode(self.rows, forKey: .rows)
        try container.encode(self.totals, forKey: .totals)
        try container.encode(self.warnings, forKey: .warnings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case year
        case date
        case rate
        case rows
        case totals
        case warnings
    }
}