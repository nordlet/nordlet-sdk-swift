import Foundation

extension Requests {
    public struct PostV1CatalogItemsSuppliersUpsertRequest: Codable, Hashable, Sendable {
        public let itemId: String
        public let partnerId: String
        public let supplierCode: String?
        public let purchasePriceExclVat: String?
        public let currency: String?
        public let notes: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            itemId: String,
            partnerId: String,
            supplierCode: String? = nil,
            purchasePriceExclVat: String? = nil,
            currency: String? = nil,
            notes: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.itemId = itemId
            self.partnerId = partnerId
            self.supplierCode = supplierCode
            self.purchasePriceExclVat = purchasePriceExclVat
            self.currency = currency
            self.notes = notes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.itemId = try container.decode(String.self, forKey: .itemId)
            self.partnerId = try container.decode(String.self, forKey: .partnerId)
            self.supplierCode = try container.decodeIfPresent(String.self, forKey: .supplierCode)
            self.purchasePriceExclVat = try container.decodeIfPresent(String.self, forKey: .purchasePriceExclVat)
            self.currency = try container.decodeIfPresent(String.self, forKey: .currency)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.itemId, forKey: .itemId)
            try container.encode(self.partnerId, forKey: .partnerId)
            try container.encodeIfPresent(self.supplierCode, forKey: .supplierCode)
            try container.encodeIfPresent(self.purchasePriceExclVat, forKey: .purchasePriceExclVat)
            try container.encodeIfPresent(self.currency, forKey: .currency)
            try container.encodeIfPresent(self.notes, forKey: .notes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case itemId
            case partnerId
            case supplierCode
            case purchasePriceExclVat
            case currency
            case notes
        }
    }
}