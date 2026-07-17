import Foundation

public struct PostV1CatalogItemsCreateRequestComponentsItem: Codable, Hashable, Sendable {
    public let itemId: String
    public let quantity: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        itemId: String,
        quantity: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.itemId = itemId
        self.quantity = quantity
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.itemId = try container.decode(String.self, forKey: .itemId)
        self.quantity = try container.decode(String.self, forKey: .quantity)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.itemId, forKey: .itemId)
        try container.encode(self.quantity, forKey: .quantity)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case itemId
        case quantity
    }
}