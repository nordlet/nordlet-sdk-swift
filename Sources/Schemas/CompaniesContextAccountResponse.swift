import Foundation

public struct CompaniesContextAccountResponse: Codable, Hashable, Sendable {
    public let periods: CompaniesContextAccountResponsePeriods
    public let postingRules: [String: String]
    public let bankAccounts: [CompaniesContextAccountResponseBankAccountsItem]
    public let vatTypesUsed: [CompaniesContextAccountResponseVatTypesUsedItem]
    public let filings: [CompaniesContextAccountResponseFilingsItem]
    public let payroll: CompaniesContextAccountResponsePayroll
    public let profile: CompaniesContextAccountResponseProfile
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        periods: CompaniesContextAccountResponsePeriods,
        postingRules: [String: String],
        bankAccounts: [CompaniesContextAccountResponseBankAccountsItem],
        vatTypesUsed: [CompaniesContextAccountResponseVatTypesUsedItem],
        filings: [CompaniesContextAccountResponseFilingsItem],
        payroll: CompaniesContextAccountResponsePayroll,
        profile: CompaniesContextAccountResponseProfile,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.periods = periods
        self.postingRules = postingRules
        self.bankAccounts = bankAccounts
        self.vatTypesUsed = vatTypesUsed
        self.filings = filings
        self.payroll = payroll
        self.profile = profile
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.periods = try container.decode(CompaniesContextAccountResponsePeriods.self, forKey: .periods)
        self.postingRules = try container.decode([String: String].self, forKey: .postingRules)
        self.bankAccounts = try container.decode([CompaniesContextAccountResponseBankAccountsItem].self, forKey: .bankAccounts)
        self.vatTypesUsed = try container.decode([CompaniesContextAccountResponseVatTypesUsedItem].self, forKey: .vatTypesUsed)
        self.filings = try container.decode([CompaniesContextAccountResponseFilingsItem].self, forKey: .filings)
        self.payroll = try container.decode(CompaniesContextAccountResponsePayroll.self, forKey: .payroll)
        self.profile = try container.decode(CompaniesContextAccountResponseProfile.self, forKey: .profile)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.periods, forKey: .periods)
        try container.encode(self.postingRules, forKey: .postingRules)
        try container.encode(self.bankAccounts, forKey: .bankAccounts)
        try container.encode(self.vatTypesUsed, forKey: .vatTypesUsed)
        try container.encode(self.filings, forKey: .filings)
        try container.encode(self.payroll, forKey: .payroll)
        try container.encode(self.profile, forKey: .profile)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case periods
        case postingRules
        case bankAccounts
        case vatTypesUsed
        case filings
        case payroll
        case profile
    }
}