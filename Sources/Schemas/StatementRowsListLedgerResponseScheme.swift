import Foundation

public struct StatementRowsListLedgerResponseScheme: Codable, Hashable, Sendable {
    public let key: String
    public let country: String
    public let title: String
    public let source: String
    public let rows: [StatementRowsListLedgerResponseSchemeRowsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        key: String,
        country: String,
        title: String,
        source: String,
        rows: [StatementRowsListLedgerResponseSchemeRowsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.key = key
        self.country = country
        self.title = title
        self.source = source
        self.rows = rows
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.key = try container.decode(String.self, forKey: .key)
        self.country = try container.decode(String.self, forKey: .country)
        self.title = try container.decode(String.self, forKey: .title)
        self.source = try container.decode(String.self, forKey: .source)
        self.rows = try container.decode([StatementRowsListLedgerResponseSchemeRowsItem].self, forKey: .rows)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.key, forKey: .key)
        try container.encode(self.country, forKey: .country)
        try container.encode(self.title, forKey: .title)
        try container.encode(self.source, forKey: .source)
        try container.encode(self.rows, forKey: .rows)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case key
        case country
        case title
        case source
        case rows
    }
}