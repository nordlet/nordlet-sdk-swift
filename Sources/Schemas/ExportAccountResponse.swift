import Foundation

public struct ExportAccountResponse: Codable, Hashable, Sendable {
    public let generatedAt: Date
    public let user: ExportAccountResponseUser
    public let consent: ExportAccountResponseConsent
    public let memberships: [ExportAccountResponseMembershipsItem]
    public let sessions: [ExportAccountResponseSessionsItem]
    public let billing: Nullable<ExportAccountResponseBilling>
    public let billingAccounts: [ExportAccountResponseBillingAccountsItem]
    public let creditTransactions: [ExportAccountResponseCreditTransactionsItem]
    public let auditEntries: [ExportAccountResponseAuditEntriesItem]
    public let authEvents: [ExportAccountResponseAuthEventsItem]
    public let apiKeys: [ExportAccountResponseApiKeysItem]
    public let oauthGrants: [ExportAccountResponseOauthGrantsItem]
    public let referralPoints: [ExportAccountResponseReferralPointsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        generatedAt: Date,
        user: ExportAccountResponseUser,
        consent: ExportAccountResponseConsent,
        memberships: [ExportAccountResponseMembershipsItem],
        sessions: [ExportAccountResponseSessionsItem],
        billing: Nullable<ExportAccountResponseBilling>,
        billingAccounts: [ExportAccountResponseBillingAccountsItem],
        creditTransactions: [ExportAccountResponseCreditTransactionsItem],
        auditEntries: [ExportAccountResponseAuditEntriesItem],
        authEvents: [ExportAccountResponseAuthEventsItem],
        apiKeys: [ExportAccountResponseApiKeysItem],
        oauthGrants: [ExportAccountResponseOauthGrantsItem],
        referralPoints: [ExportAccountResponseReferralPointsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.generatedAt = generatedAt
        self.user = user
        self.consent = consent
        self.memberships = memberships
        self.sessions = sessions
        self.billing = billing
        self.billingAccounts = billingAccounts
        self.creditTransactions = creditTransactions
        self.auditEntries = auditEntries
        self.authEvents = authEvents
        self.apiKeys = apiKeys
        self.oauthGrants = oauthGrants
        self.referralPoints = referralPoints
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.generatedAt = try container.decode(Date.self, forKey: .generatedAt)
        self.user = try container.decode(ExportAccountResponseUser.self, forKey: .user)
        self.consent = try container.decode(ExportAccountResponseConsent.self, forKey: .consent)
        self.memberships = try container.decode([ExportAccountResponseMembershipsItem].self, forKey: .memberships)
        self.sessions = try container.decode([ExportAccountResponseSessionsItem].self, forKey: .sessions)
        self.billing = try container.decode(Nullable<ExportAccountResponseBilling>.self, forKey: .billing)
        self.billingAccounts = try container.decode([ExportAccountResponseBillingAccountsItem].self, forKey: .billingAccounts)
        self.creditTransactions = try container.decode([ExportAccountResponseCreditTransactionsItem].self, forKey: .creditTransactions)
        self.auditEntries = try container.decode([ExportAccountResponseAuditEntriesItem].self, forKey: .auditEntries)
        self.authEvents = try container.decode([ExportAccountResponseAuthEventsItem].self, forKey: .authEvents)
        self.apiKeys = try container.decode([ExportAccountResponseApiKeysItem].self, forKey: .apiKeys)
        self.oauthGrants = try container.decode([ExportAccountResponseOauthGrantsItem].self, forKey: .oauthGrants)
        self.referralPoints = try container.decode([ExportAccountResponseReferralPointsItem].self, forKey: .referralPoints)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.generatedAt, forKey: .generatedAt)
        try container.encode(self.user, forKey: .user)
        try container.encode(self.consent, forKey: .consent)
        try container.encode(self.memberships, forKey: .memberships)
        try container.encode(self.sessions, forKey: .sessions)
        try container.encode(self.billing, forKey: .billing)
        try container.encode(self.billingAccounts, forKey: .billingAccounts)
        try container.encode(self.creditTransactions, forKey: .creditTransactions)
        try container.encode(self.auditEntries, forKey: .auditEntries)
        try container.encode(self.authEvents, forKey: .authEvents)
        try container.encode(self.apiKeys, forKey: .apiKeys)
        try container.encode(self.oauthGrants, forKey: .oauthGrants)
        try container.encode(self.referralPoints, forKey: .referralPoints)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case generatedAt
        case user
        case consent
        case memberships
        case sessions
        case billing
        case billingAccounts
        case creditTransactions
        case auditEntries
        case authEvents
        case apiKeys
        case oauthGrants
        case referralPoints
    }
}