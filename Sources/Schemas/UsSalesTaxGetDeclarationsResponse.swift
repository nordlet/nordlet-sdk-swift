import Foundation

public struct UsSalesTaxGetDeclarationsResponse: Codable, Hashable, Sendable {
    public let from: String
    public let to: String
    public let jurisdictions: [UsSalesTaxGetDeclarationsResponseJurisdictionsItem]
    public let salesTax: String
    public let warnings: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        from: String,
        to: String,
        jurisdictions: [UsSalesTaxGetDeclarationsResponseJurisdictionsItem],
        salesTax: String,
        warnings: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.from = from
        self.to = to
        self.jurisdictions = jurisdictions
        self.salesTax = salesTax
        self.warnings = warnings
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.from = try container.decode(String.self, forKey: .from)
        self.to = try container.decode(String.self, forKey: .to)
        self.jurisdictions = try container.decode([UsSalesTaxGetDeclarationsResponseJurisdictionsItem].self, forKey: .jurisdictions)
        self.salesTax = try container.decode(String.self, forKey: .salesTax)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.from, forKey: .from)
        try container.encode(self.to, forKey: .to)
        try container.encode(self.jurisdictions, forKey: .jurisdictions)
        try container.encode(self.salesTax, forKey: .salesTax)
        try container.encode(self.warnings, forKey: .warnings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case from
        case to
        case jurisdictions
        case salesTax
        case warnings
    }
}