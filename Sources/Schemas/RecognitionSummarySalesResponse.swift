import Foundation

public struct RecognitionSummarySalesResponse: Codable, Hashable, Sendable {
    public let rows: [RecognitionSummarySalesResponseRowsItem]
    public let totals: RecognitionSummarySalesResponseTotals
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        rows: [RecognitionSummarySalesResponseRowsItem],
        totals: RecognitionSummarySalesResponseTotals,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.rows = rows
        self.totals = totals
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.rows = try container.decode([RecognitionSummarySalesResponseRowsItem].self, forKey: .rows)
        self.totals = try container.decode(RecognitionSummarySalesResponseTotals.self, forKey: .totals)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.rows, forKey: .rows)
        try container.encode(self.totals, forKey: .totals)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case rows
        case totals
    }
}