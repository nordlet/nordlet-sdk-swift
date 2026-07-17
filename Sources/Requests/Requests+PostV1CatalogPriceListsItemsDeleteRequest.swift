import Foundation

extension Requests {
    public struct PostV1CatalogPriceListsItemsDeleteRequest: Codable, Hashable, Sendable {
        public let priceListId: String
        public let itemId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            priceListId: String,
            itemId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.priceListId = priceListId
            self.itemId = itemId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.priceListId = try container.decode(String.self, forKey: .priceListId)
            self.itemId = try container.decode(String.self, forKey: .itemId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.priceListId, forKey: .priceListId)
            try container.encode(self.itemId, forKey: .itemId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case priceListId
            case itemId
        }
    }
}