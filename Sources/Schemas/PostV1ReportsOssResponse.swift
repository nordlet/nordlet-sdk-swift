import Foundation

public struct PostV1ReportsOssResponse: Codable, Hashable, Sendable {
    public let fromDate: String
    public let toDate: String
    public let rows: [PostV1ReportsOssResponseRowsItem]
    public let totals: PostV1ReportsOssResponseTotals
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        fromDate: String,
        toDate: String,
        rows: [PostV1ReportsOssResponseRowsItem],
        totals: PostV1ReportsOssResponseTotals,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.fromDate = fromDate
        self.toDate = toDate
        self.rows = rows
        self.totals = totals
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.fromDate = try container.decode(String.self, forKey: .fromDate)
        self.toDate = try container.decode(String.self, forKey: .toDate)
        self.rows = try container.decode([PostV1ReportsOssResponseRowsItem].self, forKey: .rows)
        self.totals = try container.decode(PostV1ReportsOssResponseTotals.self, forKey: .totals)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.fromDate, forKey: .fromDate)
        try container.encode(self.toDate, forKey: .toDate)
        try container.encode(self.rows, forKey: .rows)
        try container.encode(self.totals, forKey: .totals)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case fromDate
        case toDate
        case rows
        case totals
    }
}