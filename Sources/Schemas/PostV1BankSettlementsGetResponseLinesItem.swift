import Foundation

public struct PostV1BankSettlementsGetResponseLinesItem: Codable, Hashable, Sendable {
    public let id: String
    public let externalId: String
    public let category: String
    public let date: String
    public let gross: String
    public let fee: String
    public let net: String
    public let description: Nullable<String>
    public let sourceId: Nullable<String>
    public let chargeId: Nullable<String>
    public let reference: Nullable<String>
    public let matchedInvoiceId: Nullable<String>
    public let matchStatus: PostV1BankSettlementsGetResponseLinesItemMatchStatus
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        externalId: String,
        category: String,
        date: String,
        gross: String,
        fee: String,
        net: String,
        description: Nullable<String>,
        sourceId: Nullable<String>,
        chargeId: Nullable<String>,
        reference: Nullable<String>,
        matchedInvoiceId: Nullable<String>,
        matchStatus: PostV1BankSettlementsGetResponseLinesItemMatchStatus,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.externalId = externalId
        self.category = category
        self.date = date
        self.gross = gross
        self.fee = fee
        self.net = net
        self.description = description
        self.sourceId = sourceId
        self.chargeId = chargeId
        self.reference = reference
        self.matchedInvoiceId = matchedInvoiceId
        self.matchStatus = matchStatus
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.externalId = try container.decode(String.self, forKey: .externalId)
        self.category = try container.decode(String.self, forKey: .category)
        self.date = try container.decode(String.self, forKey: .date)
        self.gross = try container.decode(String.self, forKey: .gross)
        self.fee = try container.decode(String.self, forKey: .fee)
        self.net = try container.decode(String.self, forKey: .net)
        self.description = try container.decode(Nullable<String>.self, forKey: .description)
        self.sourceId = try container.decode(Nullable<String>.self, forKey: .sourceId)
        self.chargeId = try container.decode(Nullable<String>.self, forKey: .chargeId)
        self.reference = try container.decode(Nullable<String>.self, forKey: .reference)
        self.matchedInvoiceId = try container.decode(Nullable<String>.self, forKey: .matchedInvoiceId)
        self.matchStatus = try container.decode(PostV1BankSettlementsGetResponseLinesItemMatchStatus.self, forKey: .matchStatus)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.externalId, forKey: .externalId)
        try container.encode(self.category, forKey: .category)
        try container.encode(self.date, forKey: .date)
        try container.encode(self.gross, forKey: .gross)
        try container.encode(self.fee, forKey: .fee)
        try container.encode(self.net, forKey: .net)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.sourceId, forKey: .sourceId)
        try container.encode(self.chargeId, forKey: .chargeId)
        try container.encode(self.reference, forKey: .reference)
        try container.encode(self.matchedInvoiceId, forKey: .matchedInvoiceId)
        try container.encode(self.matchStatus, forKey: .matchStatus)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case externalId
        case category
        case date
        case gross
        case fee
        case net
        case description
        case sourceId
        case chargeId
        case reference
        case matchedInvoiceId
        case matchStatus
    }
}