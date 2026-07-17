import Foundation

public struct PostV1SalesActsGetResponse: Codable, Hashable, Sendable {
    public let id: String
    public let partnerId: String
    public let type: PostV1SalesActsGetResponseType
    public let status: PostV1SalesActsGetResponseStatus
    public let series: String
    public let fullNumber: Nullable<String>
    public let documentDate: String
    public let saleInvoiceId: Nullable<String>
    public let transferredByName: Nullable<String>
    public let transferredByTitle: Nullable<String>
    public let acceptedByName: Nullable<String>
    public let acceptedByTitle: Nullable<String>
    public let notes: Nullable<String>
    public let createdAt: String
    public let updatedAt: String
    public let lines: [PostV1SalesActsGetResponseLinesItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        partnerId: String,
        type: PostV1SalesActsGetResponseType,
        status: PostV1SalesActsGetResponseStatus,
        series: String,
        fullNumber: Nullable<String>,
        documentDate: String,
        saleInvoiceId: Nullable<String>,
        transferredByName: Nullable<String>,
        transferredByTitle: Nullable<String>,
        acceptedByName: Nullable<String>,
        acceptedByTitle: Nullable<String>,
        notes: Nullable<String>,
        createdAt: String,
        updatedAt: String,
        lines: [PostV1SalesActsGetResponseLinesItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.partnerId = partnerId
        self.type = type
        self.status = status
        self.series = series
        self.fullNumber = fullNumber
        self.documentDate = documentDate
        self.saleInvoiceId = saleInvoiceId
        self.transferredByName = transferredByName
        self.transferredByTitle = transferredByTitle
        self.acceptedByName = acceptedByName
        self.acceptedByTitle = acceptedByTitle
        self.notes = notes
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.lines = lines
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.partnerId = try container.decode(String.self, forKey: .partnerId)
        self.type = try container.decode(PostV1SalesActsGetResponseType.self, forKey: .type)
        self.status = try container.decode(PostV1SalesActsGetResponseStatus.self, forKey: .status)
        self.series = try container.decode(String.self, forKey: .series)
        self.fullNumber = try container.decode(Nullable<String>.self, forKey: .fullNumber)
        self.documentDate = try container.decode(String.self, forKey: .documentDate)
        self.saleInvoiceId = try container.decode(Nullable<String>.self, forKey: .saleInvoiceId)
        self.transferredByName = try container.decode(Nullable<String>.self, forKey: .transferredByName)
        self.transferredByTitle = try container.decode(Nullable<String>.self, forKey: .transferredByTitle)
        self.acceptedByName = try container.decode(Nullable<String>.self, forKey: .acceptedByName)
        self.acceptedByTitle = try container.decode(Nullable<String>.self, forKey: .acceptedByTitle)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.updatedAt = try container.decode(String.self, forKey: .updatedAt)
        self.lines = try container.decode([PostV1SalesActsGetResponseLinesItem].self, forKey: .lines)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.partnerId, forKey: .partnerId)
        try container.encode(self.type, forKey: .type)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.series, forKey: .series)
        try container.encode(self.fullNumber, forKey: .fullNumber)
        try container.encode(self.documentDate, forKey: .documentDate)
        try container.encode(self.saleInvoiceId, forKey: .saleInvoiceId)
        try container.encode(self.transferredByName, forKey: .transferredByName)
        try container.encode(self.transferredByTitle, forKey: .transferredByTitle)
        try container.encode(self.acceptedByName, forKey: .acceptedByName)
        try container.encode(self.acceptedByTitle, forKey: .acceptedByTitle)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.updatedAt, forKey: .updatedAt)
        try container.encode(self.lines, forKey: .lines)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case partnerId
        case type
        case status
        case series
        case fullNumber
        case documentDate
        case saleInvoiceId
        case transferredByName
        case transferredByTitle
        case acceptedByName
        case acceptedByTitle
        case notes
        case createdAt
        case updatedAt
        case lines
    }
}