import Foundation

public struct GbCorporationTaxComputeDeclarationsResponsePartsItem: Codable, Hashable, Sendable {
    public let financialYear: Double
    public let from: String
    public let to: String
    public let days: Double
    public let profits: String
    public let augmentedProfits: String
    public let lowerLimit: Nullable<String>
    public let upperLimit: Nullable<String>
    public let rate: GbCorporationTaxComputeDeclarationsResponsePartsItemRate
    public let taxAtMainRate: String
    public let marginalRelief: String
    public let tax: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        financialYear: Double,
        from: String,
        to: String,
        days: Double,
        profits: String,
        augmentedProfits: String,
        lowerLimit: Nullable<String>,
        upperLimit: Nullable<String>,
        rate: GbCorporationTaxComputeDeclarationsResponsePartsItemRate,
        taxAtMainRate: String,
        marginalRelief: String,
        tax: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.financialYear = financialYear
        self.from = from
        self.to = to
        self.days = days
        self.profits = profits
        self.augmentedProfits = augmentedProfits
        self.lowerLimit = lowerLimit
        self.upperLimit = upperLimit
        self.rate = rate
        self.taxAtMainRate = taxAtMainRate
        self.marginalRelief = marginalRelief
        self.tax = tax
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.financialYear = try container.decode(Double.self, forKey: .financialYear)
        self.from = try container.decode(String.self, forKey: .from)
        self.to = try container.decode(String.self, forKey: .to)
        self.days = try container.decode(Double.self, forKey: .days)
        self.profits = try container.decode(String.self, forKey: .profits)
        self.augmentedProfits = try container.decode(String.self, forKey: .augmentedProfits)
        self.lowerLimit = try container.decode(Nullable<String>.self, forKey: .lowerLimit)
        self.upperLimit = try container.decode(Nullable<String>.self, forKey: .upperLimit)
        self.rate = try container.decode(GbCorporationTaxComputeDeclarationsResponsePartsItemRate.self, forKey: .rate)
        self.taxAtMainRate = try container.decode(String.self, forKey: .taxAtMainRate)
        self.marginalRelief = try container.decode(String.self, forKey: .marginalRelief)
        self.tax = try container.decode(String.self, forKey: .tax)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.financialYear, forKey: .financialYear)
        try container.encode(self.from, forKey: .from)
        try container.encode(self.to, forKey: .to)
        try container.encode(self.days, forKey: .days)
        try container.encode(self.profits, forKey: .profits)
        try container.encode(self.augmentedProfits, forKey: .augmentedProfits)
        try container.encode(self.lowerLimit, forKey: .lowerLimit)
        try container.encode(self.upperLimit, forKey: .upperLimit)
        try container.encode(self.rate, forKey: .rate)
        try container.encode(self.taxAtMainRate, forKey: .taxAtMainRate)
        try container.encode(self.marginalRelief, forKey: .marginalRelief)
        try container.encode(self.tax, forKey: .tax)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case financialYear
        case from
        case to
        case days
        case profits
        case augmentedProfits
        case lowerLimit
        case upperLimit
        case rate
        case taxAtMainRate
        case marginalRelief
        case tax
    }
}