import Foundation

public struct RecognitionComputeSalesResponse: Codable, Hashable, Sendable {
    public let asOfDate: CalendarDate
    public let totalAmount: String
    public let rows: [RecognitionComputeSalesResponseRowsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        asOfDate: CalendarDate,
        totalAmount: String,
        rows: [RecognitionComputeSalesResponseRowsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.asOfDate = asOfDate
        self.totalAmount = totalAmount
        self.rows = rows
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.asOfDate = try container.decode(CalendarDate.self, forKey: .asOfDate)
        self.totalAmount = try container.decode(String.self, forKey: .totalAmount)
        self.rows = try container.decode([RecognitionComputeSalesResponseRowsItem].self, forKey: .rows)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.asOfDate, forKey: .asOfDate)
        try container.encode(self.totalAmount, forKey: .totalAmount)
        try container.encode(self.rows, forKey: .rows)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case asOfDate
        case totalAmount
        case rows
    }
}