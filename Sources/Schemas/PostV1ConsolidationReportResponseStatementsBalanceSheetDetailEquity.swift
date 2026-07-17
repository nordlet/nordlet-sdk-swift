import Foundation

public struct PostV1ConsolidationReportResponseStatementsBalanceSheetDetailEquity: Codable, Hashable, Sendable {
    public let capital: String
    public let reserves: String
    public let retainedEarnings: String
    public let otherEquity: String
    public let periodResult: String
    public let total: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        capital: String,
        reserves: String,
        retainedEarnings: String,
        otherEquity: String,
        periodResult: String,
        total: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.capital = capital
        self.reserves = reserves
        self.retainedEarnings = retainedEarnings
        self.otherEquity = otherEquity
        self.periodResult = periodResult
        self.total = total
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.capital = try container.decode(String.self, forKey: .capital)
        self.reserves = try container.decode(String.self, forKey: .reserves)
        self.retainedEarnings = try container.decode(String.self, forKey: .retainedEarnings)
        self.otherEquity = try container.decode(String.self, forKey: .otherEquity)
        self.periodResult = try container.decode(String.self, forKey: .periodResult)
        self.total = try container.decode(String.self, forKey: .total)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.capital, forKey: .capital)
        try container.encode(self.reserves, forKey: .reserves)
        try container.encode(self.retainedEarnings, forKey: .retainedEarnings)
        try container.encode(self.otherEquity, forKey: .otherEquity)
        try container.encode(self.periodResult, forKey: .periodResult)
        try container.encode(self.total, forKey: .total)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case capital
        case reserves
        case retainedEarnings
        case otherEquity
        case periodResult
        case total
    }
}