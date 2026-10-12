import Foundation

extension Requests {
    public struct InvoiceTemplatesUpdateSalesRequest: Codable, Hashable, Sendable {
        public let id: String
        public let name: String?
        public let documentType: InvoiceTemplatesUpdateSalesRequestDocumentType?
        public let partnerId: Nullable<String>?
        public let currency: Nullable<String>?
        public let paymentTermDays: Nullable<Int64>?
        public let vatScheme: Nullable<InvoiceTemplatesUpdateSalesRequestVatScheme>?
        public let vatCountryCode: Nullable<String>?
        public let agreementId: Nullable<String>?
        public let operationTypeId: Nullable<String>?
        public let documentSeriesId: Nullable<String>?
        public let discountPercent: Nullable<String>?
        public let issuedByName: Nullable<String>?
        public let issuedByTitle: Nullable<String>?
        public let receivedByName: Nullable<String>?
        public let receivedByTitle: Nullable<String>?
        public let notes: Nullable<String>?
        public let supplyType: Nullable<InvoiceTemplatesUpdateSalesRequestSupplyType>?
        public let seriesLabel: Nullable<String>?
        public let orderNumber: Nullable<String>?
        public let intrastatTransportMode: Nullable<String>?
        public let intrastatDeliveryTerms: Nullable<String>?
        public let intrastatRegion: Nullable<String>?
        public let intrastatNatureOfTransaction: Nullable<String>?
        public let lines: [InvoiceTemplatesUpdateSalesRequestLinesItem]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            name: String? = nil,
            documentType: InvoiceTemplatesUpdateSalesRequestDocumentType? = nil,
            partnerId: Nullable<String>? = nil,
            currency: Nullable<String>? = nil,
            paymentTermDays: Nullable<Int64>? = nil,
            vatScheme: Nullable<InvoiceTemplatesUpdateSalesRequestVatScheme>? = nil,
            vatCountryCode: Nullable<String>? = nil,
            agreementId: Nullable<String>? = nil,
            operationTypeId: Nullable<String>? = nil,
            documentSeriesId: Nullable<String>? = nil,
            discountPercent: Nullable<String>? = nil,
            issuedByName: Nullable<String>? = nil,
            issuedByTitle: Nullable<String>? = nil,
            receivedByName: Nullable<String>? = nil,
            receivedByTitle: Nullable<String>? = nil,
            notes: Nullable<String>? = nil,
            supplyType: Nullable<InvoiceTemplatesUpdateSalesRequestSupplyType>? = nil,
            seriesLabel: Nullable<String>? = nil,
            orderNumber: Nullable<String>? = nil,
            intrastatTransportMode: Nullable<String>? = nil,
            intrastatDeliveryTerms: Nullable<String>? = nil,
            intrastatRegion: Nullable<String>? = nil,
            intrastatNatureOfTransaction: Nullable<String>? = nil,
            lines: [InvoiceTemplatesUpdateSalesRequestLinesItem]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.name = name
            self.documentType = documentType
            self.partnerId = partnerId
            self.currency = currency
            self.paymentTermDays = paymentTermDays
            self.vatScheme = vatScheme
            self.vatCountryCode = vatCountryCode
            self.agreementId = agreementId
            self.operationTypeId = operationTypeId
            self.documentSeriesId = documentSeriesId
            self.discountPercent = discountPercent
            self.issuedByName = issuedByName
            self.issuedByTitle = issuedByTitle
            self.receivedByName = receivedByName
            self.receivedByTitle = receivedByTitle
            self.notes = notes
            self.supplyType = supplyType
            self.seriesLabel = seriesLabel
            self.orderNumber = orderNumber
            self.intrastatTransportMode = intrastatTransportMode
            self.intrastatDeliveryTerms = intrastatDeliveryTerms
            self.intrastatRegion = intrastatRegion
            self.intrastatNatureOfTransaction = intrastatNatureOfTransaction
            self.lines = lines
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.documentType = try container.decodeIfPresent(InvoiceTemplatesUpdateSalesRequestDocumentType.self, forKey: .documentType)
            self.partnerId = try container.decodeNullableIfPresent(String.self, forKey: .partnerId)
            self.currency = try container.decodeNullableIfPresent(String.self, forKey: .currency)
            self.paymentTermDays = try container.decodeNullableIfPresent(Int64.self, forKey: .paymentTermDays)
            self.vatScheme = try container.decodeNullableIfPresent(InvoiceTemplatesUpdateSalesRequestVatScheme.self, forKey: .vatScheme)
            self.vatCountryCode = try container.decodeNullableIfPresent(String.self, forKey: .vatCountryCode)
            self.agreementId = try container.decodeNullableIfPresent(String.self, forKey: .agreementId)
            self.operationTypeId = try container.decodeNullableIfPresent(String.self, forKey: .operationTypeId)
            self.documentSeriesId = try container.decodeNullableIfPresent(String.self, forKey: .documentSeriesId)
            self.discountPercent = try container.decodeNullableIfPresent(String.self, forKey: .discountPercent)
            self.issuedByName = try container.decodeNullableIfPresent(String.self, forKey: .issuedByName)
            self.issuedByTitle = try container.decodeNullableIfPresent(String.self, forKey: .issuedByTitle)
            self.receivedByName = try container.decodeNullableIfPresent(String.self, forKey: .receivedByName)
            self.receivedByTitle = try container.decodeNullableIfPresent(String.self, forKey: .receivedByTitle)
            self.notes = try container.decodeNullableIfPresent(String.self, forKey: .notes)
            self.supplyType = try container.decodeNullableIfPresent(InvoiceTemplatesUpdateSalesRequestSupplyType.self, forKey: .supplyType)
            self.seriesLabel = try container.decodeNullableIfPresent(String.self, forKey: .seriesLabel)
            self.orderNumber = try container.decodeNullableIfPresent(String.self, forKey: .orderNumber)
            self.intrastatTransportMode = try container.decodeNullableIfPresent(String.self, forKey: .intrastatTransportMode)
            self.intrastatDeliveryTerms = try container.decodeNullableIfPresent(String.self, forKey: .intrastatDeliveryTerms)
            self.intrastatRegion = try container.decodeNullableIfPresent(String.self, forKey: .intrastatRegion)
            self.intrastatNatureOfTransaction = try container.decodeNullableIfPresent(String.self, forKey: .intrastatNatureOfTransaction)
            self.lines = try container.decodeIfPresent([InvoiceTemplatesUpdateSalesRequestLinesItem].self, forKey: .lines)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.documentType, forKey: .documentType)
            try container.encodeNullableIfPresent(self.partnerId, forKey: .partnerId)
            try container.encodeNullableIfPresent(self.currency, forKey: .currency)
            try container.encodeNullableIfPresent(self.paymentTermDays, forKey: .paymentTermDays)
            try container.encodeNullableIfPresent(self.vatScheme, forKey: .vatScheme)
            try container.encodeNullableIfPresent(self.vatCountryCode, forKey: .vatCountryCode)
            try container.encodeNullableIfPresent(self.agreementId, forKey: .agreementId)
            try container.encodeNullableIfPresent(self.operationTypeId, forKey: .operationTypeId)
            try container.encodeNullableIfPresent(self.documentSeriesId, forKey: .documentSeriesId)
            try container.encodeNullableIfPresent(self.discountPercent, forKey: .discountPercent)
            try container.encodeNullableIfPresent(self.issuedByName, forKey: .issuedByName)
            try container.encodeNullableIfPresent(self.issuedByTitle, forKey: .issuedByTitle)
            try container.encodeNullableIfPresent(self.receivedByName, forKey: .receivedByName)
            try container.encodeNullableIfPresent(self.receivedByTitle, forKey: .receivedByTitle)
            try container.encodeNullableIfPresent(self.notes, forKey: .notes)
            try container.encodeNullableIfPresent(self.supplyType, forKey: .supplyType)
            try container.encodeNullableIfPresent(self.seriesLabel, forKey: .seriesLabel)
            try container.encodeNullableIfPresent(self.orderNumber, forKey: .orderNumber)
            try container.encodeNullableIfPresent(self.intrastatTransportMode, forKey: .intrastatTransportMode)
            try container.encodeNullableIfPresent(self.intrastatDeliveryTerms, forKey: .intrastatDeliveryTerms)
            try container.encodeNullableIfPresent(self.intrastatRegion, forKey: .intrastatRegion)
            try container.encodeNullableIfPresent(self.intrastatNatureOfTransaction, forKey: .intrastatNatureOfTransaction)
            try container.encodeIfPresent(self.lines, forKey: .lines)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case name
            case documentType
            case partnerId
            case currency
            case paymentTermDays
            case vatScheme
            case vatCountryCode
            case agreementId
            case operationTypeId
            case documentSeriesId
            case discountPercent
            case issuedByName
            case issuedByTitle
            case receivedByName
            case receivedByTitle
            case notes
            case supplyType
            case seriesLabel
            case orderNumber
            case intrastatTransportMode
            case intrastatDeliveryTerms
            case intrastatRegion
            case intrastatNatureOfTransaction
            case lines
        }
    }
}