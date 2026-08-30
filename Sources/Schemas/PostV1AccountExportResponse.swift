import Foundation

public struct PostV1AccountExportResponse: Codable, Hashable, Sendable {
    public let generatedAt: String
    public let user: PostV1AccountExportResponseUser
    public let consent: PostV1AccountExportResponseConsent
    public let memberships: [PostV1AccountExportResponseMembershipsItem]
    public let sessions: [PostV1AccountExportResponseSessionsItem]
    public let billing: Nullable<PostV1AccountExportResponseBilling>
    public let creditTransactions: [PostV1AccountExportResponseCreditTransactionsItem]
    public let auditEntries: [PostV1AccountExportResponseAuditEntriesItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        generatedAt: String,
        user: PostV1AccountExportResponseUser,
        consent: PostV1AccountExportResponseConsent,
        memberships: [PostV1AccountExportResponseMembershipsItem],
        sessions: [PostV1AccountExportResponseSessionsItem],
        billing: Nullable<PostV1AccountExportResponseBilling>,
        creditTransactions: [PostV1AccountExportResponseCreditTransactionsItem],
        auditEntries: [PostV1AccountExportResponseAuditEntriesItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.generatedAt = generatedAt
        self.user = user
        self.consent = consent
        self.memberships = memberships
        self.sessions = sessions
        self.billing = billing
        self.creditTransactions = creditTransactions
        self.auditEntries = auditEntries
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.generatedAt = try container.decode(String.self, forKey: .generatedAt)
        self.user = try container.decode(PostV1AccountExportResponseUser.self, forKey: .user)
        self.consent = try container.decode(PostV1AccountExportResponseConsent.self, forKey: .consent)
        self.memberships = try container.decode([PostV1AccountExportResponseMembershipsItem].self, forKey: .memberships)
        self.sessions = try container.decode([PostV1AccountExportResponseSessionsItem].self, forKey: .sessions)
        self.billing = try container.decode(Nullable<PostV1AccountExportResponseBilling>.self, forKey: .billing)
        self.creditTransactions = try container.decode([PostV1AccountExportResponseCreditTransactionsItem].self, forKey: .creditTransactions)
        self.auditEntries = try container.decode([PostV1AccountExportResponseAuditEntriesItem].self, forKey: .auditEntries)
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
        try container.encode(self.creditTransactions, forKey: .creditTransactions)
        try container.encode(self.auditEntries, forKey: .auditEntries)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case generatedAt
        case user
        case consent
        case memberships
        case sessions
        case billing
        case creditTransactions
        case auditEntries
    }
}