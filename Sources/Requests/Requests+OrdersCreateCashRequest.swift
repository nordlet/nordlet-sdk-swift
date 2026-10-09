import Foundation

extension Requests {
    public struct OrdersCreateCashRequest: Codable, Hashable, Sendable {
        public let type: OrdersCreateCashRequestType
        public let date: CalendarDate
        public let amount: String
        public let purpose: String
        public let counterAccountCode: String?
        public let cashAccountCode: String?
        public let saleInvoiceId: String?
        public let purchaseInvoiceId: String?
        public let series: String?
        public let partnerId: String?
        public let employeeId: String?
        public let notes: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            type: OrdersCreateCashRequestType,
            date: CalendarDate,
            amount: String,
            purpose: String,
            counterAccountCode: String? = nil,
            cashAccountCode: String? = nil,
            saleInvoiceId: String? = nil,
            purchaseInvoiceId: String? = nil,
            series: String? = nil,
            partnerId: String? = nil,
            employeeId: String? = nil,
            notes: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.type = type
            self.date = date
            self.amount = amount
            self.purpose = purpose
            self.counterAccountCode = counterAccountCode
            self.cashAccountCode = cashAccountCode
            self.saleInvoiceId = saleInvoiceId
            self.purchaseInvoiceId = purchaseInvoiceId
            self.series = series
            self.partnerId = partnerId
            self.employeeId = employeeId
            self.notes = notes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.type = try container.decode(OrdersCreateCashRequestType.self, forKey: .type)
            self.date = try container.decode(CalendarDate.self, forKey: .date)
            self.amount = try container.decode(String.self, forKey: .amount)
            self.purpose = try container.decode(String.self, forKey: .purpose)
            self.counterAccountCode = try container.decodeIfPresent(String.self, forKey: .counterAccountCode)
            self.cashAccountCode = try container.decodeIfPresent(String.self, forKey: .cashAccountCode)
            self.saleInvoiceId = try container.decodeIfPresent(String.self, forKey: .saleInvoiceId)
            self.purchaseInvoiceId = try container.decodeIfPresent(String.self, forKey: .purchaseInvoiceId)
            self.series = try container.decodeIfPresent(String.self, forKey: .series)
            self.partnerId = try container.decodeIfPresent(String.self, forKey: .partnerId)
            self.employeeId = try container.decodeIfPresent(String.self, forKey: .employeeId)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.type, forKey: .type)
            try container.encode(self.date, forKey: .date)
            try container.encode(self.amount, forKey: .amount)
            try container.encode(self.purpose, forKey: .purpose)
            try container.encodeIfPresent(self.counterAccountCode, forKey: .counterAccountCode)
            try container.encodeIfPresent(self.cashAccountCode, forKey: .cashAccountCode)
            try container.encodeIfPresent(self.saleInvoiceId, forKey: .saleInvoiceId)
            try container.encodeIfPresent(self.purchaseInvoiceId, forKey: .purchaseInvoiceId)
            try container.encodeIfPresent(self.series, forKey: .series)
            try container.encodeIfPresent(self.partnerId, forKey: .partnerId)
            try container.encodeIfPresent(self.employeeId, forKey: .employeeId)
            try container.encodeIfPresent(self.notes, forKey: .notes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case type
            case date
            case amount
            case purpose
            case counterAccountCode
            case cashAccountCode
            case saleInvoiceId
            case purchaseInvoiceId
            case series
            case partnerId
            case employeeId
            case notes
        }
    }
}