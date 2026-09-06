import Foundation

public struct PostV1BankFeedsSyncResponse: Codable, Hashable, Sendable {
    public let connectionId: String
    public let imported: Int64
    public let skipped: Int64
    public let posted: Int64
    public let partnersCreated: Int64
    public let invoicesCreated: Int64
    public let invoicesLinked: Int64
    public let paymentsMatched: Int64
    public let warnings: [String]
    public let accounts: [PostV1BankFeedsSyncResponseAccountsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        connectionId: String,
        imported: Int64,
        skipped: Int64,
        posted: Int64,
        partnersCreated: Int64,
        invoicesCreated: Int64,
        invoicesLinked: Int64,
        paymentsMatched: Int64,
        warnings: [String],
        accounts: [PostV1BankFeedsSyncResponseAccountsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.connectionId = connectionId
        self.imported = imported
        self.skipped = skipped
        self.posted = posted
        self.partnersCreated = partnersCreated
        self.invoicesCreated = invoicesCreated
        self.invoicesLinked = invoicesLinked
        self.paymentsMatched = paymentsMatched
        self.warnings = warnings
        self.accounts = accounts
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.connectionId = try container.decode(String.self, forKey: .connectionId)
        self.imported = try container.decode(Int64.self, forKey: .imported)
        self.skipped = try container.decode(Int64.self, forKey: .skipped)
        self.posted = try container.decode(Int64.self, forKey: .posted)
        self.partnersCreated = try container.decode(Int64.self, forKey: .partnersCreated)
        self.invoicesCreated = try container.decode(Int64.self, forKey: .invoicesCreated)
        self.invoicesLinked = try container.decode(Int64.self, forKey: .invoicesLinked)
        self.paymentsMatched = try container.decode(Int64.self, forKey: .paymentsMatched)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.accounts = try container.decode([PostV1BankFeedsSyncResponseAccountsItem].self, forKey: .accounts)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.connectionId, forKey: .connectionId)
        try container.encode(self.imported, forKey: .imported)
        try container.encode(self.skipped, forKey: .skipped)
        try container.encode(self.posted, forKey: .posted)
        try container.encode(self.partnersCreated, forKey: .partnersCreated)
        try container.encode(self.invoicesCreated, forKey: .invoicesCreated)
        try container.encode(self.invoicesLinked, forKey: .invoicesLinked)
        try container.encode(self.paymentsMatched, forKey: .paymentsMatched)
        try container.encode(self.warnings, forKey: .warnings)
        try container.encode(self.accounts, forKey: .accounts)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case connectionId
        case imported
        case skipped
        case posted
        case partnersCreated
        case invoicesCreated
        case invoicesLinked
        case paymentsMatched
        case warnings
        case accounts
    }
}