import Foundation

public struct PostV1AgreementsAgreementsCreateRequestItemsItem: Codable, Hashable, Sendable {
    public let itemId: String?
    public let description: String
    public let quantity: String?
    public let unitPrice: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        itemId: String? = nil,
        description: String,
        quantity: String? = nil,
        unitPrice: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.itemId = itemId
        self.description = description
        self.quantity = quantity
        self.unitPrice = unitPrice
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.itemId = try container.decodeIfPresent(String.self, forKey: .itemId)
        self.description = try container.decode(String.self, forKey: .description)
        self.quantity = try container.decodeIfPresent(String.self, forKey: .quantity)
        self.unitPrice = try container.decodeIfPresent(String.self, forKey: .unitPrice)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.itemId, forKey: .itemId)
        try container.encode(self.description, forKey: .description)
        try container.encodeIfPresent(self.quantity, forKey: .quantity)
        try container.encodeIfPresent(self.unitPrice, forKey: .unitPrice)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case itemId
        case description
        case quantity
        case unitPrice
    }
}