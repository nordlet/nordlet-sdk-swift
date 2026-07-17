import Foundation

public struct PostV1ReferenceSeriesCreateResponse: Codable, Hashable, Sendable {
    public let id: String
    public let documentType: String
    public let prefix: String
    public let year: Int64
    public let nextNumber: Int64
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        documentType: String,
        prefix: String,
        year: Int64,
        nextNumber: Int64,
        createdAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.documentType = documentType
        self.prefix = prefix
        self.year = year
        self.nextNumber = nextNumber
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.documentType = try container.decode(String.self, forKey: .documentType)
        self.prefix = try container.decode(String.self, forKey: .prefix)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.nextNumber = try container.decode(Int64.self, forKey: .nextNumber)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.documentType, forKey: .documentType)
        try container.encode(self.prefix, forKey: .prefix)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.nextNumber, forKey: .nextNumber)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case documentType
        case prefix
        case year
        case nextNumber
        case createdAt
    }
}