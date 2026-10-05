import Foundation

extension Requests {
    public struct OrdersCreatePurchasesRequest: Codable, Hashable, Sendable {
        public let partnerId: String
        public let orderNumber: String?
        public let orderDate: CalendarDate
        public let expectedDate: CalendarDate?
        public let warehouseId: String?
        public let currency: String?
        public let notes: String?
        public let documentRef: String?
        public let lines: [OrdersCreatePurchasesRequestLinesItem]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            partnerId: String,
            orderNumber: String? = nil,
            orderDate: CalendarDate,
            expectedDate: CalendarDate? = nil,
            warehouseId: String? = nil,
            currency: String? = nil,
            notes: String? = nil,
            documentRef: String? = nil,
            lines: [OrdersCreatePurchasesRequestLinesItem],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.partnerId = partnerId
            self.orderNumber = orderNumber
            self.orderDate = orderDate
            self.expectedDate = expectedDate
            self.warehouseId = warehouseId
            self.currency = currency
            self.notes = notes
            self.documentRef = documentRef
            self.lines = lines
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.partnerId = try container.decode(String.self, forKey: .partnerId)
            self.orderNumber = try container.decodeIfPresent(String.self, forKey: .orderNumber)
            self.orderDate = try container.decode(CalendarDate.self, forKey: .orderDate)
            self.expectedDate = try container.decodeIfPresent(CalendarDate.self, forKey: .expectedDate)
            self.warehouseId = try container.decodeIfPresent(String.self, forKey: .warehouseId)
            self.currency = try container.decodeIfPresent(String.self, forKey: .currency)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.documentRef = try container.decodeIfPresent(String.self, forKey: .documentRef)
            self.lines = try container.decode([OrdersCreatePurchasesRequestLinesItem].self, forKey: .lines)
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
            try container.encodeIfPresent(self.documentRef, forKey: .documentRef)
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
            case documentRef
            case lines
        }
    }
}