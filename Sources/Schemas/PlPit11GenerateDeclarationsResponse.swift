import Foundation

public struct PlPit11GenerateDeclarationsResponse: Codable, Hashable, Sendable {
    public let year: Int64
    public let source: String
    public let warnings: [String]
    public let notes: [String]
    public let persons: [PlPit11GenerateDeclarationsResponsePersonsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        year: Int64,
        source: String,
        warnings: [String],
        notes: [String],
        persons: [PlPit11GenerateDeclarationsResponsePersonsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.year = year
        self.source = source
        self.warnings = warnings
        self.notes = notes
        self.persons = persons
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.source = try container.decode(String.self, forKey: .source)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.notes = try container.decode([String].self, forKey: .notes)
        self.persons = try container.decode([PlPit11GenerateDeclarationsResponsePersonsItem].self, forKey: .persons)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.source, forKey: .source)
        try container.encode(self.warnings, forKey: .warnings)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.persons, forKey: .persons)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case year
        case source
        case warnings
        case notes
        case persons
    }
}