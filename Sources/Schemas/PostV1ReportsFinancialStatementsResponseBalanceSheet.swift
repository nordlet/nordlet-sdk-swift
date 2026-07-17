import Foundation

public struct PostV1ReportsFinancialStatementsResponseBalanceSheet: Codable, Hashable, Sendable {
    public let nonCurrentAssets: String
    public let currentAssets: String
    public let totalAssets: String
    public let equity: String
    public let ofWhichResult: String
    public let liabilities: String
    public let totalEquityAndLiabilities: String
    public let balanced: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        nonCurrentAssets: String,
        currentAssets: String,
        totalAssets: String,
        equity: String,
        ofWhichResult: String,
        liabilities: String,
        totalEquityAndLiabilities: String,
        balanced: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.nonCurrentAssets = nonCurrentAssets
        self.currentAssets = currentAssets
        self.totalAssets = totalAssets
        self.equity = equity
        self.ofWhichResult = ofWhichResult
        self.liabilities = liabilities
        self.totalEquityAndLiabilities = totalEquityAndLiabilities
        self.balanced = balanced
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.nonCurrentAssets = try container.decode(String.self, forKey: .nonCurrentAssets)
        self.currentAssets = try container.decode(String.self, forKey: .currentAssets)
        self.totalAssets = try container.decode(String.self, forKey: .totalAssets)
        self.equity = try container.decode(String.self, forKey: .equity)
        self.ofWhichResult = try container.decode(String.self, forKey: .ofWhichResult)
        self.liabilities = try container.decode(String.self, forKey: .liabilities)
        self.totalEquityAndLiabilities = try container.decode(String.self, forKey: .totalEquityAndLiabilities)
        self.balanced = try container.decode(Bool.self, forKey: .balanced)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.nonCurrentAssets, forKey: .nonCurrentAssets)
        try container.encode(self.currentAssets, forKey: .currentAssets)
        try container.encode(self.totalAssets, forKey: .totalAssets)
        try container.encode(self.equity, forKey: .equity)
        try container.encode(self.ofWhichResult, forKey: .ofWhichResult)
        try container.encode(self.liabilities, forKey: .liabilities)
        try container.encode(self.totalEquityAndLiabilities, forKey: .totalEquityAndLiabilities)
        try container.encode(self.balanced, forKey: .balanced)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case nonCurrentAssets
        case currentAssets
        case totalAssets
        case equity
        case ofWhichResult
        case liabilities
        case totalEquityAndLiabilities
        case balanced
    }
}