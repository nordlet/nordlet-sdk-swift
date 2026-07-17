import Foundation

public struct PostV1ReportsCostCenterActivityResponse: Codable, Hashable, Sendable {
    public let costCenter: PostV1ReportsCostCenterActivityResponseCostCenter
    public let fromDate: String
    public let toDate: String
    public let rows: [PostV1ReportsCostCenterActivityResponseRowsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        costCenter: PostV1ReportsCostCenterActivityResponseCostCenter,
        fromDate: String,
        toDate: String,
        rows: [PostV1ReportsCostCenterActivityResponseRowsItem],
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
        self.costCenter = try container.decode(PostV1ReportsCostCenterActivityResponseCostCenter.self, forKey: .costCenter)
        self.fromDate = try container.decode(String.self, forKey: .fromDate)
        self.toDate = try container.decode(String.self, forKey: .toDate)
        self.rows = try container.decode([PostV1ReportsCostCenterActivityResponseRowsItem].self, forKey: .rows)
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