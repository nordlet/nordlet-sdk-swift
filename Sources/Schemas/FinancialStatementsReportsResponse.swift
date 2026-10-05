import Foundation

public struct FinancialStatementsReportsResponse: Codable, Hashable, Sendable {
    public let category: FinancialStatementsReportsResponseCategory
    public let layout: String
    public let requiredStatements: [String]
    public let asOf: String
    public let balanceSheet: FinancialStatementsReportsResponseBalanceSheet
    public let profitLoss: FinancialStatementsReportsResponseProfitLoss
    public let balanceSheetDetail: FinancialStatementsReportsResponseBalanceSheetDetail?
    public let profitLossDetail: FinancialStatementsReportsResponseProfitLossDetail?
    public let equityChanges: [FinancialStatementsReportsResponseEquityChangesItem]?
    public let cashFlow: FinancialStatementsReportsResponseCashFlow?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        category: FinancialStatementsReportsResponseCategory,
        layout: String,
        requiredStatements: [String],
        asOf: String,
        balanceSheet: FinancialStatementsReportsResponseBalanceSheet,
        profitLoss: FinancialStatementsReportsResponseProfitLoss,
        balanceSheetDetail: FinancialStatementsReportsResponseBalanceSheetDetail? = nil,
        profitLossDetail: FinancialStatementsReportsResponseProfitLossDetail? = nil,
        equityChanges: [FinancialStatementsReportsResponseEquityChangesItem]? = nil,
        cashFlow: FinancialStatementsReportsResponseCashFlow? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.category = category
        self.layout = layout
        self.requiredStatements = requiredStatements
        self.asOf = asOf
        self.balanceSheet = balanceSheet
        self.profitLoss = profitLoss
        self.balanceSheetDetail = balanceSheetDetail
        self.profitLossDetail = profitLossDetail
        self.equityChanges = equityChanges
        self.cashFlow = cashFlow
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.category = try container.decode(FinancialStatementsReportsResponseCategory.self, forKey: .category)
        self.layout = try container.decode(String.self, forKey: .layout)
        self.requiredStatements = try container.decode([String].self, forKey: .requiredStatements)
        self.asOf = try container.decode(String.self, forKey: .asOf)
        self.balanceSheet = try container.decode(FinancialStatementsReportsResponseBalanceSheet.self, forKey: .balanceSheet)
        self.profitLoss = try container.decode(FinancialStatementsReportsResponseProfitLoss.self, forKey: .profitLoss)
        self.balanceSheetDetail = try container.decodeIfPresent(FinancialStatementsReportsResponseBalanceSheetDetail.self, forKey: .balanceSheetDetail)
        self.profitLossDetail = try container.decodeIfPresent(FinancialStatementsReportsResponseProfitLossDetail.self, forKey: .profitLossDetail)
        self.equityChanges = try container.decodeIfPresent([FinancialStatementsReportsResponseEquityChangesItem].self, forKey: .equityChanges)
        self.cashFlow = try container.decodeIfPresent(FinancialStatementsReportsResponseCashFlow.self, forKey: .cashFlow)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.category, forKey: .category)
        try container.encode(self.layout, forKey: .layout)
        try container.encode(self.requiredStatements, forKey: .requiredStatements)
        try container.encode(self.asOf, forKey: .asOf)
        try container.encode(self.balanceSheet, forKey: .balanceSheet)
        try container.encode(self.profitLoss, forKey: .profitLoss)
        try container.encodeIfPresent(self.balanceSheetDetail, forKey: .balanceSheetDetail)
        try container.encodeIfPresent(self.profitLossDetail, forKey: .profitLossDetail)
        try container.encodeIfPresent(self.equityChanges, forKey: .equityChanges)
        try container.encodeIfPresent(self.cashFlow, forKey: .cashFlow)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case category
        case layout
        case requiredStatements
        case asOf
        case balanceSheet
        case profitLoss
        case balanceSheetDetail
        case profitLossDetail
        case equityChanges
        case cashFlow
    }
}