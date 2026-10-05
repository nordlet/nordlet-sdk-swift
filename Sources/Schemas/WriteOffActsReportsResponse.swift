import Foundation

public struct WriteOffActsReportsResponse: Codable, Hashable, Sendable {
    public let fromDate: CalendarDate
    public let toDate: CalendarDate
    public let rows: [WriteOffActsReportsResponseRowsItem]
    public let totalCost: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        fromDate: CalendarDate,
        toDate: CalendarDate,
        rows: [WriteOffActsReportsResponseRowsItem],
        totalCost: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.fromDate = fromDate
        self.toDate = toDate
        self.rows = rows
        self.totalCost = totalCost
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.fromDate = try container.decode(CalendarDate.self, forKey: .fromDate)
        self.toDate = try container.decode(CalendarDate.self, forKey: .toDate)
        self.rows = try container.decode([WriteOffActsReportsResponseRowsItem].self, forKey: .rows)
        self.totalCost = try container.decode(String.self, forKey: .totalCost)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.fromDate, forKey: .fromDate)
        try container.encode(self.toDate, forKey: .toDate)
        try container.encode(self.rows, forKey: .rows)
        try container.encode(self.totalCost, forKey: .totalCost)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case fromDate
        case toDate
        case rows
        case totalCost
    }
}