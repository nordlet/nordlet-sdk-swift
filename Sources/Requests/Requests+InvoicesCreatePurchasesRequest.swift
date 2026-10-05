import Foundation

extension Requests {
    public struct InvoicesCreatePurchasesRequest: Codable, Hashable, Sendable {
        public let partnerId: String
        public let type: InvoicesCreatePurchasesRequestType?
        public let documentNumber: String
        public let documentDate: CalendarDate
        public let dueDate: CalendarDate?
        public let currency: String?
        public let creditedInvoiceId: String?
        public let purchaseOrderId: String?
        public let operationTypeId: String?
        public let notes: String?
        public let intrastatTransportMode: String?
        public let intrastatDeliveryTerms: String?
        public let intrastatRegion: String?
        public let intrastatNatureOfTransaction: String?
        public let einvoiceNumber: String?
        public let documentRef: String?
        public let lines: [InvoicesCreatePurchasesRequestLinesItem]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            partnerId: String,
            type: InvoicesCreatePurchasesRequestType? = nil,
            documentNumber: String,
            documentDate: CalendarDate,
            dueDate: CalendarDate? = nil,
            currency: String? = nil,
            creditedInvoiceId: String? = nil,
            purchaseOrderId: String? = nil,
            operationTypeId: String? = nil,
            notes: String? = nil,
            intrastatTransportMode: String? = nil,
            intrastatDeliveryTerms: String? = nil,
            intrastatRegion: String? = nil,
            intrastatNatureOfTransaction: String? = nil,
            einvoiceNumber: String? = nil,
            documentRef: String? = nil,
            lines: [InvoicesCreatePurchasesRequestLinesItem],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.partnerId = partnerId
            self.type = type
            self.documentNumber = documentNumber
            self.documentDate = documentDate
            self.dueDate = dueDate
            self.currency = currency
            self.creditedInvoiceId = creditedInvoiceId
            self.purchaseOrderId = purchaseOrderId
            self.operationTypeId = operationTypeId
            self.notes = notes
            self.intrastatTransportMode = intrastatTransportMode
            self.intrastatDeliveryTerms = intrastatDeliveryTerms
            self.intrastatRegion = intrastatRegion
            self.intrastatNatureOfTransaction = intrastatNatureOfTransaction
            self.einvoiceNumber = einvoiceNumber
            self.documentRef = documentRef
            self.lines = lines
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.partnerId = try container.decode(String.self, forKey: .partnerId)
            self.type = try container.decodeIfPresent(InvoicesCreatePurchasesRequestType.self, forKey: .type)
            self.documentNumber = try container.decode(String.self, forKey: .documentNumber)
            self.documentDate = try container.decode(CalendarDate.self, forKey: .documentDate)
            self.dueDate = try container.decodeIfPresent(CalendarDate.self, forKey: .dueDate)
            self.currency = try container.decodeIfPresent(String.self, forKey: .currency)
            self.creditedInvoiceId = try container.decodeIfPresent(String.self, forKey: .creditedInvoiceId)
            self.purchaseOrderId = try container.decodeIfPresent(String.self, forKey: .purchaseOrderId)
            self.operationTypeId = try container.decodeIfPresent(String.self, forKey: .operationTypeId)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.intrastatTransportMode = try container.decodeIfPresent(String.self, forKey: .intrastatTransportMode)
            self.intrastatDeliveryTerms = try container.decodeIfPresent(String.self, forKey: .intrastatDeliveryTerms)
            self.intrastatRegion = try container.decodeIfPresent(String.self, forKey: .intrastatRegion)
            self.intrastatNatureOfTransaction = try container.decodeIfPresent(String.self, forKey: .intrastatNatureOfTransaction)
            self.einvoiceNumber = try container.decodeIfPresent(String.self, forKey: .einvoiceNumber)
            self.documentRef = try container.decodeIfPresent(String.self, forKey: .documentRef)
            self.lines = try container.decode([InvoicesCreatePurchasesRequestLinesItem].self, forKey: .lines)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.partnerId, forKey: .partnerId)
            try container.encodeIfPresent(self.type, forKey: .type)
            try container.encode(self.documentNumber, forKey: .documentNumber)
            try container.encode(self.documentDate, forKey: .documentDate)
            try container.encodeIfPresent(self.dueDate, forKey: .dueDate)
            try container.encodeIfPresent(self.currency, forKey: .currency)
            try container.encodeIfPresent(self.creditedInvoiceId, forKey: .creditedInvoiceId)
            try container.encodeIfPresent(self.purchaseOrderId, forKey: .purchaseOrderId)
            try container.encodeIfPresent(self.operationTypeId, forKey: .operationTypeId)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encodeIfPresent(self.intrastatTransportMode, forKey: .intrastatTransportMode)
            try container.encodeIfPresent(self.intrastatDeliveryTerms, forKey: .intrastatDeliveryTerms)
            try container.encodeIfPresent(self.intrastatRegion, forKey: .intrastatRegion)
            try container.encodeIfPresent(self.intrastatNatureOfTransaction, forKey: .intrastatNatureOfTransaction)
            try container.encodeIfPresent(self.einvoiceNumber, forKey: .einvoiceNumber)
            try container.encodeIfPresent(self.documentRef, forKey: .documentRef)
            try container.encode(self.lines, forKey: .lines)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case partnerId
            case type
            case documentNumber
            case documentDate
            case dueDate
            case currency
            case creditedInvoiceId
            case purchaseOrderId
            case operationTypeId
            case notes
            case intrastatTransportMode
            case intrastatDeliveryTerms
            case intrastatRegion
            case intrastatNatureOfTransaction
            case einvoiceNumber
            case documentRef
            case lines
        }
    }
}