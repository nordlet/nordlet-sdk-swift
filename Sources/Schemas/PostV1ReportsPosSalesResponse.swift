import Foundation

public struct PostV1ReportsPosSalesResponse: Codable, Hashable, Sendable {
    public let fromDate: String
    public let toDate: String
    public let rows: [PostV1ReportsPosSalesResponseRowsItem]
    public let byRate: [PostV1ReportsPosSalesResponseByRateItem]
    public let totals: PostV1ReportsPosSalesResponseTotals
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        fromDate: String,
        toDate: String,
        rows: [PostV1ReportsPosSalesResponseRowsItem],
        byRate: [PostV1ReportsPosSalesResponseByRateItem],
        totals: PostV1ReportsPosSalesResponseTotals,
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
        self.fromDate = try container.decode(String.self, forKey: .fromDate)
        self.toDate = try container.decode(String.self, forKey: .toDate)
        self.rows = try container.decode([PostV1ReportsPosSalesResponseRowsItem].self, forKey: .rows)
        self.byRate = try container.decode([PostV1ReportsPosSalesResponseByRateItem].self, forKey: .byRate)
        self.totals = try container.decode(PostV1ReportsPosSalesResponseTotals.self, forKey: .totals)
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