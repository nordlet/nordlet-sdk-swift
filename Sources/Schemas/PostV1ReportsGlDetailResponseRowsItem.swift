import Foundation

public struct PostV1ReportsGlDetailResponseRowsItem: Codable, Hashable, Sendable {
    public let date: String
    public let description: Nullable<String>
    public let documentType: Nullable<String>
    public let documentId: Nullable<String>
    public let journalTransactionId: String
    public let debit: String
    public let credit: String
    public let balance: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        date: String,
        description: Nullable<String>,
        documentType: Nullable<String>,
        documentId: Nullable<String>,
        journalTransactionId: String,
        debit: String,
        credit: String,
        balance: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.date = date
        self.description = description
        self.documentType = documentType
        self.documentId = documentId
        self.journalTransactionId = journalTransactionId
        self.debit = debit
        self.credit = credit
        self.balance = balance
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.date = try container.decode(String.self, forKey: .date)
        self.description = try container.decode(Nullable<String>.self, forKey: .description)
        self.documentType = try container.decode(Nullable<String>.self, forKey: .documentType)
        self.documentId = try container.decode(Nullable<String>.self, forKey: .documentId)
        self.journalTransactionId = try container.decode(String.self, forKey: .journalTransactionId)
        self.debit = try container.decode(String.self, forKey: .debit)
        self.credit = try container.decode(String.self, forKey: .credit)
        self.balance = try container.decode(String.self, forKey: .balance)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.date, forKey: .date)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.documentType, forKey: .documentType)
        try container.encode(self.documentId, forKey: .documentId)
        try container.encode(self.journalTransactionId, forKey: .journalTransactionId)
        try container.encode(self.debit, forKey: .debit)
        try container.encode(self.credit, forKey: .credit)
        try container.encode(self.balance, forKey: .balance)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case date
        case description
        case documentType
        case documentId
        case journalTransactionId
        case debit
        case credit
        case balance
    }
}