import Foundation

public struct ReportConsolidationResponse: Codable, Hashable, Sendable {
    public let presentationCurrency: String
    public let fromDate: CalendarDate
    public let toDate: CalendarDate
    public let category: ReportConsolidationResponseCategory
    public let statements: ReportConsolidationResponseStatements
    public let trialBalance: [ReportConsolidationResponseTrialBalanceItem]
    public let nonControllingInterest: ReportConsolidationResponseNonControllingInterest
    public let equityMethod: ReportConsolidationResponseEquityMethod
    public let members: [ReportConsolidationResponseMembersItem]
    public let eliminations: ReportConsolidationResponseEliminations
    public let cashFlow: ReportConsolidationResponseCashFlow
    public let intercompanyCandidates: [ReportConsolidationResponseIntercompanyCandidatesItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        presentationCurrency: String,
        fromDate: CalendarDate,
        toDate: CalendarDate,
        category: ReportConsolidationResponseCategory,
        statements: ReportConsolidationResponseStatements,
        trialBalance: [ReportConsolidationResponseTrialBalanceItem],
        nonControllingInterest: ReportConsolidationResponseNonControllingInterest,
        equityMethod: ReportConsolidationResponseEquityMethod,
        members: [ReportConsolidationResponseMembersItem],
        eliminations: ReportConsolidationResponseEliminations,
        cashFlow: ReportConsolidationResponseCashFlow,
        intercompanyCandidates: [ReportConsolidationResponseIntercompanyCandidatesItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.presentationCurrency = presentationCurrency
        self.fromDate = fromDate
        self.toDate = toDate
        self.category = category
        self.statements = statements
        self.trialBalance = trialBalance
        self.nonControllingInterest = nonControllingInterest
        self.equityMethod = equityMethod
        self.members = members
        self.eliminations = eliminations
        self.cashFlow = cashFlow
        self.intercompanyCandidates = intercompanyCandidates
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.presentationCurrency = try container.decode(String.self, forKey: .presentationCurrency)
        self.fromDate = try container.decode(CalendarDate.self, forKey: .fromDate)
        self.toDate = try container.decode(CalendarDate.self, forKey: .toDate)
        self.category = try container.decode(ReportConsolidationResponseCategory.self, forKey: .category)
        self.statements = try container.decode(ReportConsolidationResponseStatements.self, forKey: .statements)
        self.trialBalance = try container.decode([ReportConsolidationResponseTrialBalanceItem].self, forKey: .trialBalance)
        self.nonControllingInterest = try container.decode(ReportConsolidationResponseNonControllingInterest.self, forKey: .nonControllingInterest)
        self.equityMethod = try container.decode(ReportConsolidationResponseEquityMethod.self, forKey: .equityMethod)
        self.members = try container.decode([ReportConsolidationResponseMembersItem].self, forKey: .members)
        self.eliminations = try container.decode(ReportConsolidationResponseEliminations.self, forKey: .eliminations)
        self.cashFlow = try container.decode(ReportConsolidationResponseCashFlow.self, forKey: .cashFlow)
        self.intercompanyCandidates = try container.decode([ReportConsolidationResponseIntercompanyCandidatesItem].self, forKey: .intercompanyCandidates)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.presentationCurrency, forKey: .presentationCurrency)
        try container.encode(self.fromDate, forKey: .fromDate)
        try container.encode(self.toDate, forKey: .toDate)
        try container.encode(self.category, forKey: .category)
        try container.encode(self.statements, forKey: .statements)
        try container.encode(self.trialBalance, forKey: .trialBalance)
        try container.encode(self.nonControllingInterest, forKey: .nonControllingInterest)
        try container.encode(self.equityMethod, forKey: .equityMethod)
        try container.encode(self.members, forKey: .members)
        try container.encode(self.eliminations, forKey: .eliminations)
        try container.encode(self.cashFlow, forKey: .cashFlow)
        try container.encode(self.intercompanyCandidates, forKey: .intercompanyCandidates)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case presentationCurrency
        case fromDate
        case toDate
        case category
        case statements
        case trialBalance
        case nonControllingInterest
        case equityMethod
        case members
        case eliminations
        case cashFlow
        case intercompanyCandidates
    }
}