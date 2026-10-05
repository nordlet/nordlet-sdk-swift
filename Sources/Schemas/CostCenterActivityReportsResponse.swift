import Foundation

public struct CostCenterActivityReportsResponse: Codable, Hashable, Sendable {
    public let costCenter: CostCenterActivityReportsResponseCostCenter
    public let fromDate: CalendarDate
    public let toDate: CalendarDate
    public let rows: [CostCenterActivityReportsResponseRowsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        costCenter: CostCenterActivityReportsResponseCostCenter,
        fromDate: CalendarDate,
        toDate: CalendarDate,
        rows: [CostCenterActivityReportsResponseRowsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.costCenter = costCenter
        self.fromDate = fromDate
        self.toDate = toDate
        self.rows = rows
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.costCenter = try container.decode(CostCenterActivityReportsResponseCostCenter.self, forKey: .costCenter)
        self.fromDate = try container.decode(CalendarDate.self, forKey: .fromDate)
        self.toDate = try container.decode(CalendarDate.self, forKey: .toDate)
        self.rows = try container.decode([CostCenterActivityReportsResponseRowsItem].self, forKey: .rows)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.costCenter, forKey: .costCenter)
        try container.encode(self.fromDate, forKey: .fromDate)
        try container.encode(self.toDate, forKey: .toDate)
        try container.encode(self.rows, forKey: .rows)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case costCenter
        case fromDate
        case toDate
        case rows
    }
}