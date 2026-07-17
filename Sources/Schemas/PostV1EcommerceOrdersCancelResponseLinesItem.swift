import Foundation

public struct PostV1EcommerceOrdersCancelResponseLinesItem: Codable, Hashable, Sendable {
    public let id: String
    public let itemId: Nullable<String>
    public let description: String
    public let quantity: String
    public let unitPriceExclVat: String
    public let vatRatePercent: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        itemId: Nullable<String>,
        description: String,
        quantity: String,
        unitPriceExclVat: String,
        vatRatePercent: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.itemId = itemId
        self.description = description
        self.quantity = quantity
        self.unitPriceExclVat = unitPriceExclVat
        self.vatRatePercent = vatRatePercent
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.itemId = try container.decode(Nullable<String>.self, forKey: .itemId)
        self.description = try container.decode(String.self, forKey: .description)
        self.quantity = try container.decode(String.self, forKey: .quantity)
        self.unitPriceExclVat = try container.decode(String.self, forKey: .unitPriceExclVat)
        self.vatRatePercent = try container.decode(String.self, forKey: .vatRatePercent)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.itemId, forKey: .itemId)
        try container.encode(self.description, forKey: .description)
        try container.encode(self.quantity, forKey: .quantity)
        try container.encode(self.unitPriceExclVat, forKey: .unitPriceExclVat)
        try container.encode(self.vatRatePercent, forKey: .vatRatePercent)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case itemId
        case description
        case quantity
        case unitPriceExclVat
        case vatRatePercent
    }
}