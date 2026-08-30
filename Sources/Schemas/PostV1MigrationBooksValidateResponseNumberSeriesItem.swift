import Foundation

public struct PostV1MigrationBooksValidateResponseNumberSeriesItem: Codable, Hashable, Sendable {
    public let prefix: String
    public let year: Int64
    public let nextNumber: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        prefix: String,
        year: Int64,
        nextNumber: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.prefix = prefix
        self.year = year
        self.nextNumber = nextNumber
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.prefix = try container.decode(String.self, forKey: .prefix)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.nextNumber = try container.decode(Int64.self, forKey: .nextNumber)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.prefix, forKey: .prefix)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.nextNumber, forKey: .nextNumber)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case prefix
        case year
        case nextNumber
    }
}