import Foundation

public struct JournalTransactionsCreateLedgerResponse: Codable, Hashable, Sendable {
    public let id: String
    public let date: CalendarDate
    public let description: Nullable<String>
    public let documentType: Nullable<String>
    public let documentId: Nullable<String>
    public let partnerId: Nullable<String>
    public let status: JournalTransactionsCreateLedgerResponseStatus
    public let createdAt: Date
    public let postedAt: Nullable<Date>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        date: CalendarDate,
        description: Nullable<String>,
        documentType: Nullable<String>,
        documentId: Nullable<String>,
        partnerId: Nullable<String>,
        status: JournalTransactionsCreateLedgerResponseStatus,
        createdAt: Date,
        postedAt: Nullable<Date>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.date = date
        self.description = description
        self.documentType = documentType
        self.documentId = documentId
        self.partnerId = partnerId
        self.status = status
        self.createdAt = createdAt
        self.postedAt = postedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.date = try container.decode(CalendarDate.self, forKey: .date)
        self.description = try container.decode(Nullable<String>.self, forKey: .description)
        self.documentType = try container.decode(Nullable<String>.self, forKey: .documentType)
        self.documentId = try container.decode(Nullable<String>.self, forKey: .documentId)
        self.partnerId = try container.decode(Nullable<String>.self, forKey: .partnerId)
        self.status = try container.decode(JournalTransactionsCreateLedgerResponseStatus.self, forKey: .status)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.postedAt = try container.decode(Nullable<Date>.self, forKey: .postedAt)
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
        try container.encode(self.partnerId, forKey: .partnerId)
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
        case partnerId
        case status
        case createdAt
        case postedAt
    }
}