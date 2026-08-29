import Foundation

extension Requests {
    public struct PostV1PurchasesOrdersUpdateRequest: Codable, Hashable, Sendable {
        public let id: String
        public let partnerId: String?
        public let orderDate: String?
        public let expectedDate: Nullable<String>?
        public let warehouseId: Nullable<String>?
        public let currency: String?
        public let notes: String?
        public let lines: [PostV1PurchasesOrdersUpdateRequestLinesItem]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            partnerId: String? = nil,
            orderDate: String? = nil,
            expectedDate: Nullable<String>? = nil,
            warehouseId: Nullable<String>? = nil,
            currency: String? = nil,
            notes: String? = nil,
            lines: [PostV1PurchasesOrdersUpdateRequestLinesItem]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.partnerId = partnerId
            self.orderDate = orderDate
            self.expectedDate = expectedDate
            self.warehouseId = warehouseId
            self.currency = currency
            self.notes = notes
            self.lines = lines
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.partnerId = try container.decodeIfPresent(String.self, forKey: .partnerId)
            self.orderDate = try container.decodeIfPresent(String.self, forKey: .orderDate)
            self.expectedDate = try container.decodeNullableIfPresent(String.self, forKey: .expectedDate)
            self.warehouseId = try container.decodeNullableIfPresent(String.self, forKey: .warehouseId)
            self.currency = try container.decodeIfPresent(String.self, forKey: .currency)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.lines = try container.decodeIfPresent([PostV1PurchasesOrdersUpdateRequestLinesItem].self, forKey: .lines)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.partnerId, forKey: .partnerId)
            try container.encodeIfPresent(self.orderDate, forKey: .orderDate)
            try container.encodeNullableIfPresent(self.expectedDate, forKey: .expectedDate)
            try container.encodeNullableIfPresent(self.warehouseId, forKey: .warehouseId)
            try container.encodeIfPresent(self.currency, forKey: .currency)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encodeIfPresent(self.lines, forKey: .lines)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case partnerId
            case orderDate
            case expectedDate
            case warehouseId
            case currency
            case notes
            case lines
        }
    }
}