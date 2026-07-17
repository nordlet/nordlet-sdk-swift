import Foundation

public struct PostV1DeclarationsLtIntrastatObligationResponseArrivals: Codable, Hashable, Sendable {
    public let previousYearValue: String
    public let obligatedFromMonth: Nullable<Int64>
    public let statisticalValueRequired: Bool
    public let monthly: [PostV1DeclarationsLtIntrastatObligationResponseArrivalsMonthlyItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        previousYearValue: String,
        obligatedFromMonth: Nullable<Int64>,
        statisticalValueRequired: Bool,
        monthly: [PostV1DeclarationsLtIntrastatObligationResponseArrivalsMonthlyItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.previousYearValue = previousYearValue
        self.obligatedFromMonth = obligatedFromMonth
        self.statisticalValueRequired = statisticalValueRequired
        self.monthly = monthly
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.previousYearValue = try container.decode(String.self, forKey: .previousYearValue)
        self.obligatedFromMonth = try container.decode(Nullable<Int64>.self, forKey: .obligatedFromMonth)
        self.statisticalValueRequired = try container.decode(Bool.self, forKey: .statisticalValueRequired)
        self.monthly = try container.decode([PostV1DeclarationsLtIntrastatObligationResponseArrivalsMonthlyItem].self, forKey: .monthly)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.previousYearValue, forKey: .previousYearValue)
        try container.encode(self.obligatedFromMonth, forKey: .obligatedFromMonth)
        try container.encode(self.statisticalValueRequired, forKey: .statisticalValueRequired)
        try container.encode(self.monthly, forKey: .monthly)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case previousYearValue
        case obligatedFromMonth
        case statisticalValueRequired
        case monthly
    }
}