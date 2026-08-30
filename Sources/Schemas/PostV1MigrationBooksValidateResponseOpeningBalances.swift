import Foundation

public struct PostV1MigrationBooksValidateResponseOpeningBalances: Codable, Hashable, Sendable {
    public let journalTransactionId: Nullable<String>
    public let date: String
    public let entries: Int64
    public let debitTotal: String
    public let creditTotal: String
    public let balancingAmount: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        journalTransactionId: Nullable<String>,
        date: String,
        entries: Int64,
        debitTotal: String,
        creditTotal: String,
        balancingAmount: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.journalTransactionId = journalTransactionId
        self.date = date
        self.entries = entries
        self.debitTotal = debitTotal
        self.creditTotal = creditTotal
        self.balancingAmount = balancingAmount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.journalTransactionId = try container.decode(Nullable<String>.self, forKey: .journalTransactionId)
        self.date = try container.decode(String.self, forKey: .date)
        self.entries = try container.decode(Int64.self, forKey: .entries)
        self.debitTotal = try container.decode(String.self, forKey: .debitTotal)
        self.creditTotal = try container.decode(String.self, forKey: .creditTotal)
        self.balancingAmount = try container.decode(String.self, forKey: .balancingAmount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.journalTransactionId, forKey: .journalTransactionId)
        try container.encode(self.date, forKey: .date)
        try container.encode(self.entries, forKey: .entries)
        try container.encode(self.debitTotal, forKey: .debitTotal)
        try container.encode(self.creditTotal, forKey: .creditTotal)
        try container.encode(self.balancingAmount, forKey: .balancingAmount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case journalTransactionId
        case date
        case entries
        case debitTotal
        case creditTotal
        case balancingAmount
    }
}