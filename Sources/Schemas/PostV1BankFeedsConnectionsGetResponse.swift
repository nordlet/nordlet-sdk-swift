import Foundation

public struct PostV1BankFeedsConnectionsGetResponse: Codable, Hashable, Sendable {
    public let id: String
    public let provider: String
    public let aspspName: String
    public let aspspCountry: String
    public let psuType: PostV1BankFeedsConnectionsGetResponsePsuType
    public let status: PostV1BankFeedsConnectionsGetResponseStatus
    public let reference: String
    public let consentExpiresAt: Nullable<String>
    public let lastSyncedAt: Nullable<String>
    public let error: Nullable<String>
    public let createdAt: String
    public let updatedAt: String
    public let accounts: [PostV1BankFeedsConnectionsGetResponseAccountsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        provider: String,
        aspspName: String,
        aspspCountry: String,
        psuType: PostV1BankFeedsConnectionsGetResponsePsuType,
        status: PostV1BankFeedsConnectionsGetResponseStatus,
        reference: String,
        consentExpiresAt: Nullable<String>,
        lastSyncedAt: Nullable<String>,
        error: Nullable<String>,
        createdAt: String,
        updatedAt: String,
        accounts: [PostV1BankFeedsConnectionsGetResponseAccountsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.provider = provider
        self.aspspName = aspspName
        self.aspspCountry = aspspCountry
        self.psuType = psuType
        self.status = status
        self.reference = reference
        self.consentExpiresAt = consentExpiresAt
        self.lastSyncedAt = lastSyncedAt
        self.error = error
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.accounts = accounts
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.provider = try container.decode(String.self, forKey: .provider)
        self.aspspName = try container.decode(String.self, forKey: .aspspName)
        self.aspspCountry = try container.decode(String.self, forKey: .aspspCountry)
        self.psuType = try container.decode(PostV1BankFeedsConnectionsGetResponsePsuType.self, forKey: .psuType)
        self.status = try container.decode(PostV1BankFeedsConnectionsGetResponseStatus.self, forKey: .status)
        self.reference = try container.decode(String.self, forKey: .reference)
        self.consentExpiresAt = try container.decode(Nullable<String>.self, forKey: .consentExpiresAt)
        self.lastSyncedAt = try container.decode(Nullable<String>.self, forKey: .lastSyncedAt)
        self.error = try container.decode(Nullable<String>.self, forKey: .error)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.updatedAt = try container.decode(String.self, forKey: .updatedAt)
        self.accounts = try container.decode([PostV1BankFeedsConnectionsGetResponseAccountsItem].self, forKey: .accounts)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.provider, forKey: .provider)
        try container.encode(self.aspspName, forKey: .aspspName)
        try container.encode(self.aspspCountry, forKey: .aspspCountry)
        try container.encode(self.psuType, forKey: .psuType)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.reference, forKey: .reference)
        try container.encode(self.consentExpiresAt, forKey: .consentExpiresAt)
        try container.encode(self.lastSyncedAt, forKey: .lastSyncedAt)
        try container.encode(self.error, forKey: .error)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.updatedAt, forKey: .updatedAt)
        try container.encode(self.accounts, forKey: .accounts)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case provider
        case aspspName
        case aspspCountry
        case psuType
        case status
        case reference
        case consentExpiresAt
        case lastSyncedAt
        case error
        case createdAt
        case updatedAt
        case accounts
    }
}