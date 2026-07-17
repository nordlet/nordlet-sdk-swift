import Foundation

public struct PostV1ConsolidationReportResponse: Codable, Hashable, Sendable {
    public let presentationCurrency: String
    public let fromDate: String
    public let toDate: String
    public let category: PostV1ConsolidationReportResponseCategory
    public let statements: PostV1ConsolidationReportResponseStatements
    public let trialBalance: [PostV1ConsolidationReportResponseTrialBalanceItem]
    public let nonControllingInterest: PostV1ConsolidationReportResponseNonControllingInterest
    public let equityMethod: PostV1ConsolidationReportResponseEquityMethod
    public let members: [PostV1ConsolidationReportResponseMembersItem]
    public let eliminations: PostV1ConsolidationReportResponseEliminations
    public let intercompanyCandidates: [PostV1ConsolidationReportResponseIntercompanyCandidatesItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        presentationCurrency: String,
        fromDate: String,
        toDate: String,
        category: PostV1ConsolidationReportResponseCategory,
        statements: PostV1ConsolidationReportResponseStatements,
        trialBalance: [PostV1ConsolidationReportResponseTrialBalanceItem],
        nonControllingInterest: PostV1ConsolidationReportResponseNonControllingInterest,
        equityMethod: PostV1ConsolidationReportResponseEquityMethod,
        members: [PostV1ConsolidationReportResponseMembersItem],
        eliminations: PostV1ConsolidationReportResponseEliminations,
        intercompanyCandidates: [PostV1ConsolidationReportResponseIntercompanyCandidatesItem],
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
        self.intercompanyCandidates = intercompanyCandidates
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.presentationCurrency = try container.decode(String.self, forKey: .presentationCurrency)
        self.fromDate = try container.decode(String.self, forKey: .fromDate)
        self.toDate = try container.decode(String.self, forKey: .toDate)
        self.category = try container.decode(PostV1ConsolidationReportResponseCategory.self, forKey: .category)
        self.statements = try container.decode(PostV1ConsolidationReportResponseStatements.self, forKey: .statements)
        self.trialBalance = try container.decode([PostV1ConsolidationReportResponseTrialBalanceItem].self, forKey: .trialBalance)
        self.nonControllingInterest = try container.decode(PostV1ConsolidationReportResponseNonControllingInterest.self, forKey: .nonControllingInterest)
        self.equityMethod = try container.decode(PostV1ConsolidationReportResponseEquityMethod.self, forKey: .equityMethod)
        self.members = try container.decode([PostV1ConsolidationReportResponseMembersItem].self, forKey: .members)
        self.eliminations = try container.decode(PostV1ConsolidationReportResponseEliminations.self, forKey: .eliminations)
        self.intercompanyCandidates = try container.decode([PostV1ConsolidationReportResponseIntercompanyCandidatesItem].self, forKey: .intercompanyCandidates)
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
        case intercompanyCandidates
    }
}