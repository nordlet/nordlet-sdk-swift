import Foundation

public struct PeriodChecklistReportsResponse: Codable, Hashable, Sendable {
    public let period: String
    public let fromDate: CalendarDate
    public let toDate: CalendarDate
    public let items: [PeriodChecklistReportsResponseItemsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        period: String,
        fromDate: CalendarDate,
        toDate: CalendarDate,
        items: [PeriodChecklistReportsResponseItemsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.period = period
        self.fromDate = fromDate
        self.toDate = toDate
        self.items = items
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.period = try container.decode(String.self, forKey: .period)
        self.fromDate = try container.decode(CalendarDate.self, forKey: .fromDate)
        self.toDate = try container.decode(CalendarDate.self, forKey: .toDate)
        self.items = try container.decode([PeriodChecklistReportsResponseItemsItem].self, forKey: .items)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.period, forKey: .period)
        try container.encode(self.fromDate, forKey: .fromDate)
        try container.encode(self.toDate, forKey: .toDate)
        try container.encode(self.items, forKey: .items)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case period
        case fromDate
        case toDate
        case items
    }
}