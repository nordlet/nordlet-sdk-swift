import Foundation

public struct UsageListBillingResponseRowsItem: Codable, Hashable, Sendable {
    public let companyId: String
    public let date: CalendarDate
    public let metric: UsageListBillingResponseRowsItemMetric
    public let quantity: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        companyId: String,
        date: CalendarDate,
        metric: UsageListBillingResponseRowsItemMetric,
        quantity: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.companyId = companyId
        self.date = date
        self.metric = metric
        self.quantity = quantity
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.companyId = try container.decode(String.self, forKey: .companyId)
        self.date = try container.decode(CalendarDate.self, forKey: .date)
        self.metric = try container.decode(UsageListBillingResponseRowsItemMetric.self, forKey: .metric)
        self.quantity = try container.decode(Double.self, forKey: .quantity)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.companyId, forKey: .companyId)
        try container.encode(self.date, forKey: .date)
        try container.encode(self.metric, forKey: .metric)
        try container.encode(self.quantity, forKey: .quantity)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case companyId
        case date
        case metric
        case quantity
    }
}