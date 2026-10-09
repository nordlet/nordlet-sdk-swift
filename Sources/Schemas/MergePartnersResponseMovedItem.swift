import Foundation

public struct MergePartnersResponseMovedItem: Codable, Hashable, Sendable {
    public let table: String
    public let column: String
    public let rows: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        table: String,
        column: String,
        rows: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.table = table
        self.column = column
        self.rows = rows
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.table = try container.decode(String.self, forKey: .table)
        self.column = try container.decode(String.self, forKey: .column)
        self.rows = try container.decode(Int64.self, forKey: .rows)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.table, forKey: .table)
        try container.encode(self.column, forKey: .column)
        try container.encode(self.rows, forKey: .rows)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case table
        case column
        case rows
    }
}