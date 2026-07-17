import Foundation

public struct PostV1ReportsMonthlySummaryResponseRowsItem: Codable, Hashable, Sendable {
    public let year: Int64
    public let month: Int64
    public let receivables: String
    public let payables: String
    public let revenue: String
    public let expenses: String
    public let netResult: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        year: Int64,
        month: Int64,
        receivables: String,
        payables: String,
        revenue: String,
        expenses: String,
        netResult: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.year = year
        self.month = month
        self.receivables = receivables
        self.payables = payables
        self.revenue = revenue
        self.expenses = expenses
        self.netResult = netResult
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.month = try container.decode(Int64.self, forKey: .month)
        self.receivables = try container.decode(String.self, forKey: .receivables)
        self.payables = try container.decode(String.self, forKey: .payables)
        self.revenue = try container.decode(String.self, forKey: .revenue)
        self.expenses = try container.decode(String.self, forKey: .expenses)
        self.netResult = try container.decode(String.self, forKey: .netResult)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.month, forKey: .month)
        try container.encode(self.receivables, forKey: .receivables)
        try container.encode(self.payables, forKey: .payables)
        try container.encode(self.revenue, forKey: .revenue)
        try container.encode(self.expenses, forKey: .expenses)
        try container.encode(self.netResult, forKey: .netResult)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case year
        case month
        case receivables
        case payables
        case revenue
        case expenses
        case netResult
    }
}