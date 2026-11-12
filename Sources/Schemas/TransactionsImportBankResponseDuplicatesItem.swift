import Foundation

public struct TransactionsImportBankResponseDuplicatesItem: Codable, Hashable, Sendable {
    public let index: Int64
    public let existingTransactionId: String
    public let date: CalendarDate
    public let amount: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        index: Int64,
        existingTransactionId: String,
        date: CalendarDate,
        amount: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.index = index
        self.existingTransactionId = existingTransactionId
        self.date = date
        self.amount = amount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.index = try container.decode(Int64.self, forKey: .index)
        self.existingTransactionId = try container.decode(String.self, forKey: .existingTransactionId)
        self.date = try container.decode(CalendarDate.self, forKey: .date)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.index, forKey: .index)
        try container.encode(self.existingTransactionId, forKey: .existingTransactionId)
        try container.encode(self.date, forKey: .date)
        try container.encode(self.amount, forKey: .amount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case index
        case existingTransactionId
        case date
        case amount
    }
}