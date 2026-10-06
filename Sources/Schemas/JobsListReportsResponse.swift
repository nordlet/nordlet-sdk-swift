import Foundation

public struct JobsListReportsResponse: Codable, Hashable, Sendable {
    public let rows: [JobsListReportsResponseRowsItem]
    public let page: Int64
    public let pageSize: Int64
    public let total: Int64
    public let totals: [String: String]?
    /// The requested totals split by currency code, present when the listed records carry a currency
    public let totalsByCurrency: [String: [String: String]]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        rows: [JobsListReportsResponseRowsItem],
        page: Int64,
        pageSize: Int64,
        total: Int64,
        totals: [String: String]? = nil,
        totalsByCurrency: [String: [String: String]]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.rows = rows
        self.page = page
        self.pageSize = pageSize
        self.total = total
        self.totals = totals
        self.totalsByCurrency = totalsByCurrency
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.rows = try container.decode([JobsListReportsResponseRowsItem].self, forKey: .rows)
        self.page = try container.decode(Int64.self, forKey: .page)
        self.pageSize = try container.decode(Int64.self, forKey: .pageSize)
        self.total = try container.decode(Int64.self, forKey: .total)
        self.totals = try container.decodeIfPresent([String: String].self, forKey: .totals)
        self.totalsByCurrency = try container.decodeIfPresent([String: [String: String]].self, forKey: .totalsByCurrency)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.rows, forKey: .rows)
        try container.encode(self.page, forKey: .page)
        try container.encode(self.pageSize, forKey: .pageSize)
        try container.encode(self.total, forKey: .total)
        try container.encodeIfPresent(self.totals, forKey: .totals)
        try container.encodeIfPresent(self.totalsByCurrency, forKey: .totalsByCurrency)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case rows
        case page
        case pageSize
        case total
        case totals
        case totalsByCurrency
    }
}