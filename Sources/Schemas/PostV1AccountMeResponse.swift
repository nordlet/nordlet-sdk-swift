import Foundation

public struct PostV1AccountMeResponse: Codable, Hashable, Sendable {
    public let user: PostV1AccountMeResponseUser
    public let locale: String
    public let activeCompanyId: Nullable<String>
    public let role: Nullable<String>
    public let companies: [PostV1AccountMeResponseCompaniesItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        user: PostV1AccountMeResponseUser,
        locale: String,
        activeCompanyId: Nullable<String>,
        role: Nullable<String>,
        companies: [PostV1AccountMeResponseCompaniesItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.user = user
        self.locale = locale
        self.activeCompanyId = activeCompanyId
        self.role = role
        self.companies = companies
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.user = try container.decode(PostV1AccountMeResponseUser.self, forKey: .user)
        self.locale = try container.decode(String.self, forKey: .locale)
        self.activeCompanyId = try container.decode(Nullable<String>.self, forKey: .activeCompanyId)
        self.role = try container.decode(Nullable<String>.self, forKey: .role)
        self.companies = try container.decode([PostV1AccountMeResponseCompaniesItem].self, forKey: .companies)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.user, forKey: .user)
        try container.encode(self.locale, forKey: .locale)
        try container.encode(self.activeCompanyId, forKey: .activeCompanyId)
        try container.encode(self.role, forKey: .role)
        try container.encode(self.companies, forKey: .companies)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case user
        case locale
        case activeCompanyId
        case role
        case companies
    }
}