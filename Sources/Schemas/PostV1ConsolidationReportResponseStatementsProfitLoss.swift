import Foundation

public struct PostV1ConsolidationReportResponseStatementsProfitLoss: Codable, Hashable, Sendable {
    public let fromDate: String
    public let toDate: String
    public let revenue: String
    public let expenses: String
    public let netResult: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        fromDate: String,
        toDate: String,
        revenue: String,
        expenses: String,
        netResult: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.fromDate = fromDate
        self.toDate = toDate
        self.revenue = revenue
        self.expenses = expenses
        self.netResult = netResult
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.fromDate = try container.decode(String.self, forKey: .fromDate)
        self.toDate = try container.decode(String.self, forKey: .toDate)
        self.revenue = try container.decode(String.self, forKey: .revenue)
        self.expenses = try container.decode(String.self, forKey: .expenses)
        self.netResult = try container.decode(String.self, forKey: .netResult)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.fromDate, forKey: .fromDate)
        try container.encode(self.toDate, forKey: .toDate)
        try container.encode(self.revenue, forKey: .revenue)
        try container.encode(self.expenses, forKey: .expenses)
        try container.encode(self.netResult, forKey: .netResult)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case fromDate
        case toDate
        case revenue
        case expenses
        case netResult
    }
}