import Foundation

public struct Us1099NecListDeclarationsResponse: Codable, Hashable, Sendable {
    public let year: Double
    public let threshold: String
    public let forms: [Us1099NecListDeclarationsResponseFormsItem]
    public let excluded: [Us1099NecListDeclarationsResponseExcludedItem]
    public let warnings: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        year: Double,
        threshold: String,
        forms: [Us1099NecListDeclarationsResponseFormsItem],
        excluded: [Us1099NecListDeclarationsResponseExcludedItem],
        warnings: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.year = year
        self.threshold = threshold
        self.forms = forms
        self.excluded = excluded
        self.warnings = warnings
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.year = try container.decode(Double.self, forKey: .year)
        self.threshold = try container.decode(String.self, forKey: .threshold)
        self.forms = try container.decode([Us1099NecListDeclarationsResponseFormsItem].self, forKey: .forms)
        self.excluded = try container.decode([Us1099NecListDeclarationsResponseExcludedItem].self, forKey: .excluded)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.threshold, forKey: .threshold)
        try container.encode(self.forms, forKey: .forms)
        try container.encode(self.excluded, forKey: .excluded)
        try container.encode(self.warnings, forKey: .warnings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case year
        case threshold
        case forms
        case excluded
        case warnings
    }
}