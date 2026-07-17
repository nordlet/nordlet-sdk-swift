import Foundation

public struct PostV1LedgerJournalTransactionsCreateRequestEntriesItem: Codable, Hashable, Sendable {
    public let accountCode: String
    public let costCenterId: String?
    public let debit: String?
    public let credit: String?
    public let description: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        accountCode: String,
        costCenterId: String? = nil,
        debit: String? = nil,
        credit: String? = nil,
        description: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.accountCode = accountCode
        self.costCenterId = costCenterId
        self.debit = debit
        self.credit = credit
        self.description = description
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.accountCode = try container.decode(String.self, forKey: .accountCode)
        self.costCenterId = try container.decodeIfPresent(String.self, forKey: .costCenterId)
        self.debit = try container.decodeIfPresent(String.self, forKey: .debit)
        self.credit = try container.decodeIfPresent(String.self, forKey: .credit)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.accountCode, forKey: .accountCode)
        try container.encodeIfPresent(self.costCenterId, forKey: .costCenterId)
        try container.encodeIfPresent(self.debit, forKey: .debit)
        try container.encodeIfPresent(self.credit, forKey: .credit)
        try container.encodeIfPresent(self.description, forKey: .description)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case accountCode
        case costCenterId
        case debit
        case credit
        case description
    }
}