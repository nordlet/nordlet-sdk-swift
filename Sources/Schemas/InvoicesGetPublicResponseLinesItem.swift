import Foundation

public struct InvoicesGetPublicResponseLinesItem: Codable, Hashable, Sendable {
    public let description: String
    public let unit: String
    public let quantity: String
    public let unitPrice: Nullable<String>
    public let vatRatePercent: String
    public let lineNet: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        description: String,
        unit: String,
        quantity: String,
        unitPrice: Nullable<String>,
        vatRatePercent: String,
        lineNet: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.description = description
        self.unit = unit
        self.quantity = quantity
        self.unitPrice = unitPrice
        self.vatRatePercent = vatRatePercent
        self.lineNet = lineNet
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.description = try container.decode(String.self, forKey: .description)
        self.unit = try container.decode(String.self, forKey: .unit)
        self.quantity = try container.decode(String.self, forKey: .quantity)
        self.unitPrice = try container.decode(Nullable<String>.self, forKey: .unitPrice)
        self.vatRatePercent = try container.decode(String.self, forKey: .vatRatePercent)
        self.lineNet = try container.decode(String.self, forKey: .lineNet)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.unit, forKey: .unit)
        try container.encode(self.quantity, forKey: .quantity)
        try container.encode(self.unitPrice, forKey: .unitPrice)
        try container.encode(self.vatRatePercent, forKey: .vatRatePercent)
        try container.encode(self.lineNet, forKey: .lineNet)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case description
        case unit
        case quantity
        case unitPrice
        case vatRatePercent
        case lineNet
    }
}