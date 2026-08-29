import Foundation

public struct PostV1SalesInvoicesIssueResponseVatEvidenceRatesItem: Codable, Hashable, Sendable {
    public let ratePercent: String
    public let country: String
    public let category: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        ratePercent: String,
        country: String,
        category: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.ratePercent = ratePercent
        self.country = country
        self.category = category
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.ratePercent = try container.decode(String.self, forKey: .ratePercent)
        self.country = try container.decode(String.self, forKey: .country)
        self.category = try container.decode(Nullable<String>.self, forKey: .category)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.ratePercent, forKey: .ratePercent)
        try container.encode(self.country, forKey: .country)
        try container.encode(self.category, forKey: .category)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case ratePercent
        case country
        case category
    }
}