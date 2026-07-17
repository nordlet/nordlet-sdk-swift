import Foundation

public struct PostV1ReportsVatDetailResponse: Codable, Hashable, Sendable {
    public let side: String
    public let fromDate: String
    public let toDate: String
    public let rows: [PostV1ReportsVatDetailResponseRowsItem]
    public let totals: PostV1ReportsVatDetailResponseTotals
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        side: String,
        fromDate: String,
        toDate: String,
        rows: [PostV1ReportsVatDetailResponseRowsItem],
        totals: PostV1ReportsVatDetailResponseTotals,
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
        self.fromDate = try container.decode(String.self, forKey: .fromDate)
        self.toDate = try container.decode(String.self, forKey: .toDate)
        self.rows = try container.decode([PostV1ReportsVatDetailResponseRowsItem].self, forKey: .rows)
        self.totals = try container.decode(PostV1ReportsVatDetailResponseTotals.self, forKey: .totals)
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