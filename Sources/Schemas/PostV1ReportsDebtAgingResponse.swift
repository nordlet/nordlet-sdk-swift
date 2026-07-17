import Foundation

public struct PostV1ReportsDebtAgingResponse: Codable, Hashable, Sendable {
    public let asOf: String
    public let side: String
    public let rows: [PostV1ReportsDebtAgingResponseRowsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        asOf: String,
        side: String,
        rows: [PostV1ReportsDebtAgingResponseRowsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.asOf = asOf
        self.side = side
        self.rows = rows
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.asOf = try container.decode(String.self, forKey: .asOf)
        self.side = try container.decode(String.self, forKey: .side)
        self.rows = try container.decode([PostV1ReportsDebtAgingResponseRowsItem].self, forKey: .rows)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.asOf, forKey: .asOf)
        try container.encode(self.side, forKey: .side)
        try container.encode(self.rows, forKey: .rows)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case asOf
        case side
        case rows
    }
}