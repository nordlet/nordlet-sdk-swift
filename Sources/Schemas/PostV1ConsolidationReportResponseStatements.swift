import Foundation

public struct PostV1ConsolidationReportResponseStatements: Codable, Hashable, Sendable {
    public let category: PostV1ConsolidationReportResponseStatementsCategory
    public let layout: String
    public let requiredStatements: [String]
    public let asOf: String
    public let balanceSheet: PostV1ConsolidationReportResponseStatementsBalanceSheet
    public let profitLoss: PostV1ConsolidationReportResponseStatementsProfitLoss
    public let balanceSheetDetail: PostV1ConsolidationReportResponseStatementsBalanceSheetDetail?
    public let profitLossDetail: PostV1ConsolidationReportResponseStatementsProfitLossDetail?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        category: PostV1ConsolidationReportResponseStatementsCategory,
        layout: String,
        requiredStatements: [String],
        asOf: String,
        balanceSheet: PostV1ConsolidationReportResponseStatementsBalanceSheet,
        profitLoss: PostV1ConsolidationReportResponseStatementsProfitLoss,
        balanceSheetDetail: PostV1ConsolidationReportResponseStatementsBalanceSheetDetail? = nil,
        profitLossDetail: PostV1ConsolidationReportResponseStatementsProfitLossDetail? = nil,
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
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.category = try container.decode(PostV1ConsolidationReportResponseStatementsCategory.self, forKey: .category)
        self.layout = try container.decode(String.self, forKey: .layout)
        self.requiredStatements = try container.decode([String].self, forKey: .requiredStatements)
        self.asOf = try container.decode(String.self, forKey: .asOf)
        self.balanceSheet = try container.decode(PostV1ConsolidationReportResponseStatementsBalanceSheet.self, forKey: .balanceSheet)
        self.profitLoss = try container.decode(PostV1ConsolidationReportResponseStatementsProfitLoss.self, forKey: .profitLoss)
        self.balanceSheetDetail = try container.decodeIfPresent(PostV1ConsolidationReportResponseStatementsBalanceSheetDetail.self, forKey: .balanceSheetDetail)
        self.profitLossDetail = try container.decodeIfPresent(PostV1ConsolidationReportResponseStatementsProfitLossDetail.self, forKey: .profitLossDetail)
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
    }
}