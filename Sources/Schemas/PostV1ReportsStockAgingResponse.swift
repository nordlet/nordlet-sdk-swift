import Foundation

public struct PostV1ReportsStockAgingResponse: Codable, Hashable, Sendable {
    public let asOf: String
    public let rows: [PostV1ReportsStockAgingResponseRowsItem]
    public let totalValue: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        asOf: String,
        rows: [PostV1ReportsStockAgingResponseRowsItem],
        totalValue: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.asOf = asOf
        self.rows = rows
        self.totalValue = totalValue
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.asOf = try container.decode(String.self, forKey: .asOf)
        self.rows = try container.decode([PostV1ReportsStockAgingResponseRowsItem].self, forKey: .rows)
        self.totalValue = try container.decode(String.self, forKey: .totalValue)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.asOf, forKey: .asOf)
        try container.encode(self.rows, forKey: .rows)
        try container.encode(self.totalValue, forKey: .totalValue)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case asOf
        case rows
        case totalValue
    }
}