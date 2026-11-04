import Foundation

extension Requests {
    public struct ItemsUnitsCreateCatalogRequest: Codable, Hashable, Sendable {
        public let itemId: String
        public let unitCode: String
        public let factor: String
        public let isDefaultSale: Bool?
        public let isDefaultPurchase: Bool?
        public let barcode: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            itemId: String,
            unitCode: String,
            factor: String,
            isDefaultSale: Bool? = nil,
            isDefaultPurchase: Bool? = nil,
            barcode: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.itemId = itemId
            self.unitCode = unitCode
            self.factor = factor
            self.isDefaultSale = isDefaultSale
            self.isDefaultPurchase = isDefaultPurchase
            self.barcode = barcode
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.itemId = try container.decode(String.self, forKey: .itemId)
            self.unitCode = try container.decode(String.self, forKey: .unitCode)
            self.factor = try container.decode(String.self, forKey: .factor)
            self.isDefaultSale = try container.decodeIfPresent(Bool.self, forKey: .isDefaultSale)
            self.isDefaultPurchase = try container.decodeIfPresent(Bool.self, forKey: .isDefaultPurchase)
            self.barcode = try container.decodeIfPresent(String.self, forKey: .barcode)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.itemId, forKey: .itemId)
            try container.encode(self.unitCode, forKey: .unitCode)
            try container.encode(self.factor, forKey: .factor)
            try container.encodeIfPresent(self.isDefaultSale, forKey: .isDefaultSale)
            try container.encodeIfPresent(self.isDefaultPurchase, forKey: .isDefaultPurchase)
            try container.encodeIfPresent(self.barcode, forKey: .barcode)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case itemId
            case unitCode
            case factor
            case isDefaultSale
            case isDefaultPurchase
            case barcode
        }
    }
}