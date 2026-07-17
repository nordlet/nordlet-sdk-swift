import Foundation

public struct PostV1PayrollRunsListResponse: Codable, Hashable, Sendable {
    public let rows: [PostV1PayrollRunsListResponseRowsItem]
    public let page: Int64
    public let pageSize: Int64
    public let total: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        rows: [PostV1PayrollRunsListResponseRowsItem],
        page: Int64,
        pageSize: Int64,
        total: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.rows = rows
        self.page = page
        self.pageSize = pageSize
        self.total = total
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.rows = try container.decode([PostV1PayrollRunsListResponseRowsItem].self, forKey: .rows)
        self.page = try container.decode(Int64.self, forKey: .page)
        self.pageSize = try container.decode(Int64.self, forKey: .pageSize)
        self.total = try container.decode(Int64.self, forKey: .total)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.rows, forKey: .rows)
        try container.encode(self.page, forKey: .page)
        try container.encode(self.pageSize, forKey: .pageSize)
        try container.encode(self.total, forKey: .total)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case rows
        case page
        case pageSize
        case total
    }
}