import Foundation

public struct PostV1CaptureDocumentsListResponseRowsItemExtractionLinesItem: Codable, Hashable, Sendable {
    public let description: String
    public let quantity: String
    public let unit: Nullable<String>
    public let unitPriceExclVat: Nullable<String>
    public let vatRatePercent: Nullable<String>
    public let lineNet: Nullable<String>
    public let lineVat: Nullable<String>
    public let lineGross: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        description: String,
        quantity: String,
        unit: Nullable<String>,
        unitPriceExclVat: Nullable<String>,
        vatRatePercent: Nullable<String>,
        lineNet: Nullable<String>,
        lineVat: Nullable<String>,
        lineGross: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.description = description
        self.quantity = quantity
        self.unit = unit
        self.unitPriceExclVat = unitPriceExclVat
        self.vatRatePercent = vatRatePercent
        self.lineNet = lineNet
        self.lineVat = lineVat
        self.lineGross = lineGross
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.description = try container.decode(String.self, forKey: .description)
        self.quantity = try container.decode(String.self, forKey: .quantity)
        self.unit = try container.decode(Nullable<String>.self, forKey: .unit)
        self.unitPriceExclVat = try container.decode(Nullable<String>.self, forKey: .unitPriceExclVat)
        self.vatRatePercent = try container.decode(Nullable<String>.self, forKey: .vatRatePercent)
        self.lineNet = try container.decode(Nullable<String>.self, forKey: .lineNet)
        self.lineVat = try container.decode(Nullable<String>.self, forKey: .lineVat)
        self.lineGross = try container.decode(Nullable<String>.self, forKey: .lineGross)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.quantity, forKey: .quantity)
        try container.encode(self.unit, forKey: .unit)
        try container.encode(self.unitPriceExclVat, forKey: .unitPriceExclVat)
        try container.encode(self.vatRatePercent, forKey: .vatRatePercent)
        try container.encode(self.lineNet, forKey: .lineNet)
        try container.encode(self.lineVat, forKey: .lineVat)
        try container.encode(self.lineGross, forKey: .lineGross)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case description
        case quantity
        case unit
        case unitPriceExclVat
        case vatRatePercent
        case lineNet
        case lineVat
        case lineGross
    }
}