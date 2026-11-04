import Foundation

extension Requests {
    public struct ItemsUnitsUpdateCatalogRequest: Codable, Hashable, Sendable {
        public let id: String
        public let factor: String?
        public let isDefaultSale: Bool?
        public let isDefaultPurchase: Bool?
        public let barcode: Nullable<String>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            factor: String? = nil,
            isDefaultSale: Bool? = nil,
            isDefaultPurchase: Bool? = nil,
            barcode: Nullable<String>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.factor = factor
            self.isDefaultSale = isDefaultSale
            self.isDefaultPurchase = isDefaultPurchase
            self.barcode = barcode
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.factor = try container.decodeIfPresent(String.self, forKey: .factor)
            self.isDefaultSale = try container.decodeIfPresent(Bool.self, forKey: .isDefaultSale)
            self.isDefaultPurchase = try container.decodeIfPresent(Bool.self, forKey: .isDefaultPurchase)
            self.barcode = try container.decodeNullableIfPresent(String.self, forKey: .barcode)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.factor, forKey: .factor)
            try container.encodeIfPresent(self.isDefaultSale, forKey: .isDefaultSale)
            try container.encodeIfPresent(self.isDefaultPurchase, forKey: .isDefaultPurchase)
            try container.encodeNullableIfPresent(self.barcode, forKey: .barcode)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case factor
            case isDefaultSale
            case isDefaultPurchase
            case barcode
        }
    }
}