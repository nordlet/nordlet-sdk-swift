import Foundation

public struct PostV1LedgerJournalTransactionsCreateResponse: Codable, Hashable, Sendable {
    public let id: String
    public let date: String
    public let description: Nullable<String>
    public let documentType: Nullable<String>
    public let documentId: Nullable<String>
    public let status: PostV1LedgerJournalTransactionsCreateResponseStatus
    public let createdAt: String
    public let postedAt: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        date: String,
        description: Nullable<String>,
        documentType: Nullable<String>,
        documentId: Nullable<String>,
        status: PostV1LedgerJournalTransactionsCreateResponseStatus,
        createdAt: String,
        postedAt: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.date = date
        self.description = description
        self.documentType = documentType
        self.documentId = documentId
        self.status = status
        self.createdAt = createdAt
        self.postedAt = postedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.date = try container.decode(String.self, forKey: .date)
        self.description = try container.decode(Nullable<String>.self, forKey: .description)
        self.documentType = try container.decode(Nullable<String>.self, forKey: .documentType)
        self.documentId = try container.decode(Nullable<String>.self, forKey: .documentId)
        self.status = try container.decode(PostV1LedgerJournalTransactionsCreateResponseStatus.self, forKey: .status)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.postedAt = try container.decode(Nullable<String>.self, forKey: .postedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.date, forKey: .date)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.documentType, forKey: .documentType)
        try container.encode(self.documentId, forKey: .documentId)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.postedAt, forKey: .postedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case date
        case description
        case documentType
        case documentId
        case status
        case createdAt
        case postedAt
    }
}