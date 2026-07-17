import Foundation

public struct PostV1CatalogPriceListsItemsListResponseRowsItem: Codable, Hashable, Sendable {
    public let itemId: String
    public let itemName: String
    public let itemCode: Nullable<String>
    public let unitPriceExclVat: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        itemId: String,
        itemName: String,
        itemCode: Nullable<String>,
        unitPriceExclVat: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.itemId = itemId
        self.itemName = itemName
        self.itemCode = itemCode
        self.unitPriceExclVat = unitPriceExclVat
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.itemId = try container.decode(String.self, forKey: .itemId)
        self.itemName = try container.decode(String.self, forKey: .itemName)
        self.itemCode = try container.decode(Nullable<String>.self, forKey: .itemCode)
        self.unitPriceExclVat = try container.decode(String.self, forKey: .unitPriceExclVat)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.itemId, forKey: .itemId)
        try container.encode(self.itemName, forKey: .itemName)
        try container.encode(self.itemCode, forKey: .itemCode)
        try container.encode(self.unitPriceExclVat, forKey: .unitPriceExclVat)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case itemId
        case itemName
        case itemCode
        case unitPriceExclVat
    }
}