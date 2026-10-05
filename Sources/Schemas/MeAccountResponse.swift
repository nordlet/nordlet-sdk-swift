import Foundation

public struct MeAccountResponse: Codable, Hashable, Sendable {
    public let user: MeAccountResponseUser
    public let locale: String
    public let activeCompanyId: Nullable<String>
    public let timeZone: String
    public let role: Nullable<String>
    public let billing: MeAccountResponseBilling
    public let referralPoints: Int64
    public let consent: MeAccountResponseConsent
    public let companies: [MeAccountResponseCompaniesItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        user: MeAccountResponseUser,
        locale: String,
        activeCompanyId: Nullable<String>,
        timeZone: String,
        role: Nullable<String>,
        billing: MeAccountResponseBilling,
        referralPoints: Int64,
        consent: MeAccountResponseConsent,
        companies: [MeAccountResponseCompaniesItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.user = user
        self.locale = locale
        self.activeCompanyId = activeCompanyId
        self.timeZone = timeZone
        self.role = role
        self.billing = billing
        self.referralPoints = referralPoints
        self.consent = consent
        self.companies = companies
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.user = try container.decode(MeAccountResponseUser.self, forKey: .user)
        self.locale = try container.decode(String.self, forKey: .locale)
        self.activeCompanyId = try container.decode(Nullable<String>.self, forKey: .activeCompanyId)
        self.timeZone = try container.decode(String.self, forKey: .timeZone)
        self.role = try container.decode(Nullable<String>.self, forKey: .role)
        self.billing = try container.decode(MeAccountResponseBilling.self, forKey: .billing)
        self.referralPoints = try container.decode(Int64.self, forKey: .referralPoints)
        self.consent = try container.decode(MeAccountResponseConsent.self, forKey: .consent)
        self.companies = try container.decode([MeAccountResponseCompaniesItem].self, forKey: .companies)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.user, forKey: .user)
        try container.encode(self.locale, forKey: .locale)
        try container.encode(self.activeCompanyId, forKey: .activeCompanyId)
        try container.encode(self.timeZone, forKey: .timeZone)
        try container.encode(self.role, forKey: .role)
        try container.encode(self.billing, forKey: .billing)
        try container.encode(self.referralPoints, forKey: .referralPoints)
        try container.encode(self.consent, forKey: .consent)
        try container.encode(self.companies, forKey: .companies)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case user
        case locale
        case activeCompanyId
        case timeZone
        case role
        case billing
        case referralPoints
        case consent
        case companies
    }
}