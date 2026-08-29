import Foundation

extension Requests {
    public struct PostV1PurchasesOrdersCreateRequest: Codable, Hashable, Sendable {
        public let partnerId: String
        public let orderNumber: String?
        public let orderDate: String
        public let expectedDate: String?
        public let warehouseId: String?
        public let currency: String?
        public let notes: String?
        public let lines: [PostV1PurchasesOrdersCreateRequestLinesItem]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            partnerId: String,
            orderNumber: String? = nil,
            orderDate: String,
            expectedDate: String? = nil,
            warehouseId: String? = nil,
            currency: String? = nil,
            notes: String? = nil,
            lines: [PostV1PurchasesOrdersCreateRequestLinesItem],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.partnerId = partnerId
            self.orderNumber = orderNumber
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
            self.partnerId = try container.decode(String.self, forKey: .partnerId)
            self.orderNumber = try container.decodeIfPresent(String.self, forKey: .orderNumber)
            self.orderDate = try container.decode(String.self, forKey: .orderDate)
            self.expectedDate = try container.decodeIfPresent(String.self, forKey: .expectedDate)
            self.warehouseId = try container.decodeIfPresent(String.self, forKey: .warehouseId)
            self.currency = try container.decodeIfPresent(String.self, forKey: .currency)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.lines = try container.decode([PostV1PurchasesOrdersCreateRequestLinesItem].self, forKey: .lines)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.partnerId, forKey: .partnerId)
            try container.encodeIfPresent(self.orderNumber, forKey: .orderNumber)
            try container.encode(self.orderDate, forKey: .orderDate)
            try container.encodeIfPresent(self.expectedDate, forKey: .expectedDate)
            try container.encodeIfPresent(self.warehouseId, forKey: .warehouseId)
            try container.encodeIfPresent(self.currency, forKey: .currency)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encode(self.lines, forKey: .lines)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case partnerId
            case orderNumber
            case orderDate
            case expectedDate
            case warehouseId
            case currency
            case notes
            case lines
        }
    }
}