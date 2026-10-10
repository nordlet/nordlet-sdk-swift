import Foundation

public struct EuDigitalReportingListDeclarationsResponseTransactionsItemLinesItem: Codable, Hashable, Sendable {
    public let description: String
    public let quantity: String
    public let unit: String
    public let unitPrice: Nullable<String>
    public let taxableAmount: String
    public let vatRatePercent: String
    public let vatAmount: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        description: String,
        quantity: String,
        unit: String,
        unitPrice: Nullable<String>,
        taxableAmount: String,
        vatRatePercent: String,
        vatAmount: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.description = description
        self.quantity = quantity
        self.unit = unit
        self.unitPrice = unitPrice
        self.taxableAmount = taxableAmount
        self.vatRatePercent = vatRatePercent
        self.vatAmount = vatAmount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.description = try container.decode(String.self, forKey: .description)
        self.quantity = try container.decode(String.self, forKey: .quantity)
        self.unit = try container.decode(String.self, forKey: .unit)
        self.unitPrice = try container.decode(Nullable<String>.self, forKey: .unitPrice)
        self.taxableAmount = try container.decode(String.self, forKey: .taxableAmount)
        self.vatRatePercent = try container.decode(String.self, forKey: .vatRatePercent)
        self.vatAmount = try container.decode(String.self, forKey: .vatAmount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.quantity, forKey: .quantity)
        try container.encode(self.unit, forKey: .unit)
        try container.encode(self.unitPrice, forKey: .unitPrice)
        try container.encode(self.taxableAmount, forKey: .taxableAmount)
        try container.encode(self.vatRatePercent, forKey: .vatRatePercent)
        try container.encode(self.vatAmount, forKey: .vatAmount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case description
        case quantity
        case unit
        case unitPrice
        case taxableAmount
        case vatRatePercent
        case vatAmount
    }
}