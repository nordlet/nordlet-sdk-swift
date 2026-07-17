import Foundation

public struct PostV1EcommerceOrdersCreateRequestLinesItem: Codable, Hashable, Sendable {
    public let itemId: String?
    public let description: String
    public let quantity: String
    public let unitPriceExclVat: String
    public let vatRatePercent: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        itemId: String? = nil,
        description: String,
        quantity: String,
        unitPriceExclVat: String,
        vatRatePercent: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.itemId = itemId
        self.description = description
        self.quantity = quantity
        self.unitPriceExclVat = unitPriceExclVat
        self.vatRatePercent = vatRatePercent
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.itemId = try container.decodeIfPresent(String.self, forKey: .itemId)
        self.description = try container.decode(String.self, forKey: .description)
        self.quantity = try container.decode(String.self, forKey: .quantity)
        self.unitPriceExclVat = try container.decode(String.self, forKey: .unitPriceExclVat)
        self.vatRatePercent = try container.decodeIfPresent(String.self, forKey: .vatRatePercent)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.itemId, forKey: .itemId)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.quantity, forKey: .quantity)
        try container.encode(self.unitPriceExclVat, forKey: .unitPriceExclVat)
        try container.encodeIfPresent(self.vatRatePercent, forKey: .vatRatePercent)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case itemId
        case description
        case quantity
        case unitPriceExclVat
        case vatRatePercent
    }
}