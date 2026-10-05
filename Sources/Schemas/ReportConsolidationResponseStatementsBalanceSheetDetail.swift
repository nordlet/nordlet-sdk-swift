import Foundation

public struct ReportConsolidationResponseStatementsBalanceSheetDetail: Codable, Hashable, Sendable {
    public let nonCurrentAssets: ReportConsolidationResponseStatementsBalanceSheetDetailNonCurrentAssets
    public let currentAssets: ReportConsolidationResponseStatementsBalanceSheetDetailCurrentAssets
    public let equity: ReportConsolidationResponseStatementsBalanceSheetDetailEquity
    public let liabilities: ReportConsolidationResponseStatementsBalanceSheetDetailLiabilities
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        nonCurrentAssets: ReportConsolidationResponseStatementsBalanceSheetDetailNonCurrentAssets,
        currentAssets: ReportConsolidationResponseStatementsBalanceSheetDetailCurrentAssets,
        equity: ReportConsolidationResponseStatementsBalanceSheetDetailEquity,
        liabilities: ReportConsolidationResponseStatementsBalanceSheetDetailLiabilities,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.nonCurrentAssets = nonCurrentAssets
        self.currentAssets = currentAssets
        self.equity = equity
        self.liabilities = liabilities
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.nonCurrentAssets = try container.decode(ReportConsolidationResponseStatementsBalanceSheetDetailNonCurrentAssets.self, forKey: .nonCurrentAssets)
        self.currentAssets = try container.decode(ReportConsolidationResponseStatementsBalanceSheetDetailCurrentAssets.self, forKey: .currentAssets)
        self.equity = try container.decode(ReportConsolidationResponseStatementsBalanceSheetDetailEquity.self, forKey: .equity)
        self.liabilities = try container.decode(ReportConsolidationResponseStatementsBalanceSheetDetailLiabilities.self, forKey: .liabilities)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.nonCurrentAssets, forKey: .nonCurrentAssets)
        try container.encode(self.currentAssets, forKey: .currentAssets)
        try container.encode(self.equity, forKey: .equity)
        try container.encode(self.liabilities, forKey: .liabilities)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case nonCurrentAssets
        case currentAssets
        case equity
        case liabilities
    }
}