import Foundation

public struct UsW2ListDeclarationsResponse: Codable, Hashable, Sendable {
    public let year: Double
    public let forms: [UsW2ListDeclarationsResponseFormsItem]
    public let w3: UsW2ListDeclarationsResponseW3
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        year: Double,
        forms: [UsW2ListDeclarationsResponseFormsItem],
        w3: UsW2ListDeclarationsResponseW3,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.year = year
        self.forms = forms
        self.w3 = w3
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.year = try container.decode(Double.self, forKey: .year)
        self.forms = try container.decode([UsW2ListDeclarationsResponseFormsItem].self, forKey: .forms)
        self.w3 = try container.decode(UsW2ListDeclarationsResponseW3.self, forKey: .w3)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.forms, forKey: .forms)
        try container.encode(self.w3, forKey: .w3)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case year
        case forms
        case w3
    }
}