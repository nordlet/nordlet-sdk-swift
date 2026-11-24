import Foundation

public struct TransactionsSuggestMatchesBankResponseAllocationsItem: Codable, Hashable, Sendable {
    public let documentType: TransactionsSuggestMatchesBankResponseAllocationsItemDocumentType
    public let documentId: String
    public let number: String
    public let amount: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        documentType: TransactionsSuggestMatchesBankResponseAllocationsItemDocumentType,
        documentId: String,
        number: String,
        amount: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.documentType = documentType
        self.documentId = documentId
        self.number = number
        self.amount = amount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.documentType = try container.decode(TransactionsSuggestMatchesBankResponseAllocationsItemDocumentType.self, forKey: .documentType)
        self.documentId = try container.decode(String.self, forKey: .documentId)
        self.number = try container.decode(String.self, forKey: .number)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.documentType, forKey: .documentType)
        try container.encode(self.documentId, forKey: .documentId)
        try container.encode(self.number, forKey: .number)
        try container.encode(self.amount, forKey: .amount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case documentType
        case documentId
        case number
        case amount
    }
}