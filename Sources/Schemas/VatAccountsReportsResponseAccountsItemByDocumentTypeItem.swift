import Foundation

public struct VatAccountsReportsResponseAccountsItemByDocumentTypeItem: Codable, Hashable, Sendable {
    public let documentType: String
    public let debit: String
    public let credit: String
    public let transactions: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        documentType: String,
        debit: String,
        credit: String,
        transactions: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.documentType = documentType
        self.debit = debit
        self.credit = credit
        self.transactions = transactions
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.documentType = try container.decode(String.self, forKey: .documentType)
        self.debit = try container.decode(String.self, forKey: .debit)
        self.credit = try container.decode(String.self, forKey: .credit)
        self.transactions = try container.decode(Int64.self, forKey: .transactions)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.documentType, forKey: .documentType)
        try container.encode(self.debit, forKey: .debit)
        try container.encode(self.credit, forKey: .credit)
        try container.encode(self.transactions, forKey: .transactions)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case documentType
        case debit
        case credit
        case transactions
    }
}