import Foundation

public struct PostV1ConsolidationReportResponseStatementsProfitLossDetail: Codable, Hashable, Sendable {
    public let salesRevenue: String
    public let costOfSales: String
    public let grossProfit: String
    public let sellingExpenses: String
    public let adminExpenses: String
    public let operatingProfit: String
    public let otherActivityResult: String
    public let financialActivityResult: String
    public let profitBeforeTax: String
    public let incomeTax: String
    public let netProfit: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        salesRevenue: String,
        costOfSales: String,
        grossProfit: String,
        sellingExpenses: String,
        adminExpenses: String,
        operatingProfit: String,
        otherActivityResult: String,
        financialActivityResult: String,
        profitBeforeTax: String,
        incomeTax: String,
        netProfit: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.salesRevenue = salesRevenue
        self.costOfSales = costOfSales
        self.grossProfit = grossProfit
        self.sellingExpenses = sellingExpenses
        self.adminExpenses = adminExpenses
        self.operatingProfit = operatingProfit
        self.otherActivityResult = otherActivityResult
        self.financialActivityResult = financialActivityResult
        self.profitBeforeTax = profitBeforeTax
        self.incomeTax = incomeTax
        self.netProfit = netProfit
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.salesRevenue = try container.decode(String.self, forKey: .salesRevenue)
        self.costOfSales = try container.decode(String.self, forKey: .costOfSales)
        self.grossProfit = try container.decode(String.self, forKey: .grossProfit)
        self.sellingExpenses = try container.decode(String.self, forKey: .sellingExpenses)
        self.adminExpenses = try container.decode(String.self, forKey: .adminExpenses)
        self.operatingProfit = try container.decode(String.self, forKey: .operatingProfit)
        self.otherActivityResult = try container.decode(String.self, forKey: .otherActivityResult)
        self.financialActivityResult = try container.decode(String.self, forKey: .financialActivityResult)
        self.profitBeforeTax = try container.decode(String.self, forKey: .profitBeforeTax)
        self.incomeTax = try container.decode(String.self, forKey: .incomeTax)
        self.netProfit = try container.decode(String.self, forKey: .netProfit)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.salesRevenue, forKey: .salesRevenue)
        try container.encode(self.costOfSales, forKey: .costOfSales)
        try container.encode(self.grossProfit, forKey: .grossProfit)
        try container.encode(self.sellingExpenses, forKey: .sellingExpenses)
        try container.encode(self.adminExpenses, forKey: .adminExpenses)
        try container.encode(self.operatingProfit, forKey: .operatingProfit)
        try container.encode(self.otherActivityResult, forKey: .otherActivityResult)
        try container.encode(self.financialActivityResult, forKey: .financialActivityResult)
        try container.encode(self.profitBeforeTax, forKey: .profitBeforeTax)
        try container.encode(self.incomeTax, forKey: .incomeTax)
        try container.encode(self.netProfit, forKey: .netProfit)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case salesRevenue
        case costOfSales
        case grossProfit
        case sellingExpenses
        case adminExpenses
        case operatingProfit
        case otherActivityResult
        case financialActivityResult
        case profitBeforeTax
        case incomeTax
        case netProfit
    }
}