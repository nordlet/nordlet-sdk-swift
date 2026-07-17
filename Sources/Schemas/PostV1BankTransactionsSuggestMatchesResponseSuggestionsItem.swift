import Foundation

public struct PostV1BankTransactionsSuggestMatchesResponseSuggestionsItem: Codable, Hashable, Sendable {
    public let documentType: PostV1BankTransactionsSuggestMatchesResponseSuggestionsItemDocumentType
    public let documentId: String
    public let number: String
    public let partnerName: String
    public let grossTotal: String
    public let remaining: String
    public let score: Int64
    public let reasons: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        documentType: PostV1BankTransactionsSuggestMatchesResponseSuggestionsItemDocumentType,
        documentId: String,
        number: String,
        partnerName: String,
        grossTotal: String,
        remaining: String,
        score: Int64,
        reasons: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.documentType = documentType
        self.documentId = documentId
        self.number = number
        self.partnerName = partnerName
        self.grossTotal = grossTotal
        self.remaining = remaining
        self.score = score
        self.reasons = reasons
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.documentType = try container.decode(PostV1BankTransactionsSuggestMatchesResponseSuggestionsItemDocumentType.self, forKey: .documentType)
        self.documentId = try container.decode(String.self, forKey: .documentId)
        self.number = try container.decode(String.self, forKey: .number)
        self.partnerName = try container.decode(String.self, forKey: .partnerName)
        self.grossTotal = try container.decode(String.self, forKey: .grossTotal)
        self.remaining = try container.decode(String.self, forKey: .remaining)
        self.score = try container.decode(Int64.self, forKey: .score)
        self.reasons = try container.decode([String].self, forKey: .reasons)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.documentType, forKey: .documentType)
        try container.encode(self.documentId, forKey: .documentId)
        try container.encode(self.number, forKey: .number)
        try container.encode(self.partnerName, forKey: .partnerName)
        try container.encode(self.grossTotal, forKey: .grossTotal)
        try container.encode(self.remaining, forKey: .remaining)
        try container.encode(self.score, forKey: .score)
        try container.encode(self.reasons, forKey: .reasons)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case documentType
        case documentId
        case number
        case partnerName
        case grossTotal
        case remaining
        case score
        case reasons
    }
}