import Foundation

public struct GbCorporationTaxComputeDeclarationsResponse: Codable, Hashable, Sendable {
    public let periodStart: String
    public let periodEnd: String
    public let days: Double
    public let taxableTotalProfits: String
    public let augmentedProfits: String
    public let parts: [GbCorporationTaxComputeDeclarationsResponsePartsItem]
    public let marginalRelief: String
    public let tax: String
    public let notes: [String]
    public let source: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        periodStart: String,
        periodEnd: String,
        days: Double,
        taxableTotalProfits: String,
        augmentedProfits: String,
        parts: [GbCorporationTaxComputeDeclarationsResponsePartsItem],
        marginalRelief: String,
        tax: String,
        notes: [String],
        source: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.periodStart = periodStart
        self.periodEnd = periodEnd
        self.days = days
        self.taxableTotalProfits = taxableTotalProfits
        self.augmentedProfits = augmentedProfits
        self.parts = parts
        self.marginalRelief = marginalRelief
        self.tax = tax
        self.notes = notes
        self.source = source
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.periodStart = try container.decode(String.self, forKey: .periodStart)
        self.periodEnd = try container.decode(String.self, forKey: .periodEnd)
        self.days = try container.decode(Double.self, forKey: .days)
        self.taxableTotalProfits = try container.decode(String.self, forKey: .taxableTotalProfits)
        self.augmentedProfits = try container.decode(String.self, forKey: .augmentedProfits)
        self.parts = try container.decode([GbCorporationTaxComputeDeclarationsResponsePartsItem].self, forKey: .parts)
        self.marginalRelief = try container.decode(String.self, forKey: .marginalRelief)
        self.tax = try container.decode(String.self, forKey: .tax)
        self.notes = try container.decode([String].self, forKey: .notes)
        self.source = try container.decode(String.self, forKey: .source)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.periodStart, forKey: .periodStart)
        try container.encode(self.periodEnd, forKey: .periodEnd)
        try container.encode(self.days, forKey: .days)
        try container.encode(self.taxableTotalProfits, forKey: .taxableTotalProfits)
        try container.encode(self.augmentedProfits, forKey: .augmentedProfits)
        try container.encode(self.parts, forKey: .parts)
        try container.encode(self.marginalRelief, forKey: .marginalRelief)
        try container.encode(self.tax, forKey: .tax)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.source, forKey: .source)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case periodStart
        case periodEnd
        case days
        case taxableTotalProfits
        case augmentedProfits
        case parts
        case marginalRelief
        case tax
        case notes
        case source
    }
}