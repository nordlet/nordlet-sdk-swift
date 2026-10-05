import Foundation

public struct FeedsConnectionsGetBankResponse: Codable, Hashable, Sendable {
    public let id: String
    public let provider: String
    public let aspspName: String
    public let aspspCountry: String
    public let psuType: FeedsConnectionsGetBankResponsePsuType
    public let status: FeedsConnectionsGetBankResponseStatus
    public let reference: String
    public let consentExpiresAt: Nullable<Date>
    public let lastSyncedAt: Nullable<Date>
    public let error: Nullable<String>
    public let createdAt: Date
    public let updatedAt: Date
    public let accounts: [FeedsConnectionsGetBankResponseAccountsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        provider: String,
        aspspName: String,
        aspspCountry: String,
        psuType: FeedsConnectionsGetBankResponsePsuType,
        status: FeedsConnectionsGetBankResponseStatus,
        reference: String,
        consentExpiresAt: Nullable<Date>,
        lastSyncedAt: Nullable<Date>,
        error: Nullable<String>,
        createdAt: Date,
        updatedAt: Date,
        accounts: [FeedsConnectionsGetBankResponseAccountsItem],
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
        self.psuType = try container.decode(FeedsConnectionsGetBankResponsePsuType.self, forKey: .psuType)
        self.status = try container.decode(FeedsConnectionsGetBankResponseStatus.self, forKey: .status)
        self.reference = try container.decode(String.self, forKey: .reference)
        self.consentExpiresAt = try container.decode(Nullable<Date>.self, forKey: .consentExpiresAt)
        self.lastSyncedAt = try container.decode(Nullable<Date>.self, forKey: .lastSyncedAt)
        self.error = try container.decode(Nullable<String>.self, forKey: .error)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.updatedAt = try container.decode(Date.self, forKey: .updatedAt)
        self.accounts = try container.decode([FeedsConnectionsGetBankResponseAccountsItem].self, forKey: .accounts)
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