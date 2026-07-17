import Foundation

extension Requests {
    public struct PostV1CatalogPriceListsItemsSetRequest: Codable, Hashable, Sendable {
        public let priceListId: String
        public let items: [PostV1CatalogPriceListsItemsSetRequestItemsItem]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            priceListId: String,
            items: [PostV1CatalogPriceListsItemsSetRequestItemsItem],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.priceListId = priceListId
            self.items = items
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.priceListId = try container.decode(String.self, forKey: .priceListId)
            self.items = try container.decode([PostV1CatalogPriceListsItemsSetRequestItemsItem].self, forKey: .items)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.priceListId, forKey: .priceListId)
            try container.encode(self.items, forKey: .items)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case priceListId
            case items
        }
    }
}