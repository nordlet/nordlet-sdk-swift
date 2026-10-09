import Foundation

public struct TransactionsMatchManyBankRequestAllocationsItem: Codable, Hashable, Sendable {
    public let documentType: TransactionsMatchManyBankRequestAllocationsItemDocumentType
    public let documentId: String
    public let amount: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        documentType: TransactionsMatchManyBankRequestAllocationsItemDocumentType,
        documentId: String,
        amount: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.documentType = documentType
        self.documentId = documentId
        self.amount = amount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.documentType = try container.decode(TransactionsMatchManyBankRequestAllocationsItemDocumentType.self, forKey: .documentType)
        self.documentId = try container.decode(String.self, forKey: .documentId)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.documentType, forKey: .documentType)
        try container.encode(self.documentId, forKey: .documentId)
        try container.encode(self.amount, forKey: .amount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case documentType
        case documentId
        case amount
    }
}