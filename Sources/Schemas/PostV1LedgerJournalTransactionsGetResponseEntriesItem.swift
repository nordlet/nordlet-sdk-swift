import Foundation

public struct PostV1LedgerJournalTransactionsGetResponseEntriesItem: Codable, Hashable, Sendable {
    public let id: String
    public let accountId: String
    public let accountCode: String
    public let accountName: String
    public let costCenterId: Nullable<String>
    public let debit: String
    public let credit: String
    public let description: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        accountId: String,
        accountCode: String,
        accountName: String,
        costCenterId: Nullable<String>,
        debit: String,
        credit: String,
        description: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.accountId = accountId
        self.accountCode = accountCode
        self.accountName = accountName
        self.costCenterId = costCenterId
        self.debit = debit
        self.credit = credit
        self.description = description
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.accountId = try container.decode(String.self, forKey: .accountId)
        self.accountCode = try container.decode(String.self, forKey: .accountCode)
        self.accountName = try container.decode(String.self, forKey: .accountName)
        self.costCenterId = try container.decode(Nullable<String>.self, forKey: .costCenterId)
        self.debit = try container.decode(String.self, forKey: .debit)
        self.credit = try container.decode(String.self, forKey: .credit)
        self.description = try container.decode(Nullable<String>.self, forKey: .description)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.accountId, forKey: .accountId)
        try container.encode(self.accountCode, forKey: .accountCode)
        try container.encode(self.accountName, forKey: .accountName)
        try container.encode(self.costCenterId, forKey: .costCenterId)
        try container.encode(self.debit, forKey: .debit)
        try container.encode(self.credit, forKey: .credit)
        try container.encode(self.description, forKey: .description)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case accountId
        case accountCode
        case accountName
        case costCenterId
        case debit
        case credit
        case description
    }
}