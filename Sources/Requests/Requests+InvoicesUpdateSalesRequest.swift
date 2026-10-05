import Foundation

extension Requests {
    public struct InvoicesUpdateSalesRequest: Codable, Hashable, Sendable {
        public let id: String
        public let partnerId: String?
        public let agreementId: Nullable<String>?
        public let currency: String?
        public let issueDate: Nullable<CalendarDate>?
        public let dueDate: Nullable<CalendarDate>?
        public let vatScheme: Nullable<InvoicesUpdateSalesRequestVatScheme>?
        public let intrastatTransportMode: Nullable<String>?
        public let intrastatDeliveryTerms: Nullable<String>?
        public let intrastatRegion: Nullable<String>?
        public let intrastatNatureOfTransaction: Nullable<String>?
        public let vatCountryCode: Nullable<String>?
        public let deemedSupplier: Bool?
        public let notes: String?
        public let operationTypeId: Nullable<String>?
        public let documentSeriesId: Nullable<String>?
        public let seriesLabel: Nullable<String>?
        public let discountPercent: String?
        public let orderNumber: Nullable<String>?
        public let issuedByName: Nullable<String>?
        public let issuedByTitle: Nullable<String>?
        public let receivedByName: Nullable<String>?
        public let receivedByTitle: Nullable<String>?
        public let lines: [InvoicesUpdateSalesRequestLinesItem]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            partnerId: String? = nil,
            agreementId: Nullable<String>? = nil,
            currency: String? = nil,
            issueDate: Nullable<CalendarDate>? = nil,
            dueDate: Nullable<CalendarDate>? = nil,
            vatScheme: Nullable<InvoicesUpdateSalesRequestVatScheme>? = nil,
            intrastatTransportMode: Nullable<String>? = nil,
            intrastatDeliveryTerms: Nullable<String>? = nil,
            intrastatRegion: Nullable<String>? = nil,
            intrastatNatureOfTransaction: Nullable<String>? = nil,
            vatCountryCode: Nullable<String>? = nil,
            deemedSupplier: Bool? = nil,
            notes: String? = nil,
            operationTypeId: Nullable<String>? = nil,
            documentSeriesId: Nullable<String>? = nil,
            seriesLabel: Nullable<String>? = nil,
            discountPercent: String? = nil,
            orderNumber: Nullable<String>? = nil,
            issuedByName: Nullable<String>? = nil,
            issuedByTitle: Nullable<String>? = nil,
            receivedByName: Nullable<String>? = nil,
            receivedByTitle: Nullable<String>? = nil,
            lines: [InvoicesUpdateSalesRequestLinesItem]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.partnerId = partnerId
            self.agreementId = agreementId
            self.currency = currency
            self.issueDate = issueDate
            self.dueDate = dueDate
            self.vatScheme = vatScheme
            self.intrastatTransportMode = intrastatTransportMode
            self.intrastatDeliveryTerms = intrastatDeliveryTerms
            self.intrastatRegion = intrastatRegion
            self.intrastatNatureOfTransaction = intrastatNatureOfTransaction
            self.vatCountryCode = vatCountryCode
            self.deemedSupplier = deemedSupplier
            self.notes = notes
            self.operationTypeId = operationTypeId
            self.documentSeriesId = documentSeriesId
            self.seriesLabel = seriesLabel
            self.discountPercent = discountPercent
            self.orderNumber = orderNumber
            self.issuedByName = issuedByName
            self.issuedByTitle = issuedByTitle
            self.receivedByName = receivedByName
            self.receivedByTitle = receivedByTitle
            self.lines = lines
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.partnerId = try container.decodeIfPresent(String.self, forKey: .partnerId)
            self.agreementId = try container.decodeNullableIfPresent(String.self, forKey: .agreementId)
            self.currency = try container.decodeIfPresent(String.self, forKey: .currency)
            self.issueDate = try container.decodeNullableIfPresent(CalendarDate.self, forKey: .issueDate)
            self.dueDate = try container.decodeNullableIfPresent(CalendarDate.self, forKey: .dueDate)
            self.vatScheme = try container.decodeNullableIfPresent(InvoicesUpdateSalesRequestVatScheme.self, forKey: .vatScheme)
            self.intrastatTransportMode = try container.decodeNullableIfPresent(String.self, forKey: .intrastatTransportMode)
            self.intrastatDeliveryTerms = try container.decodeNullableIfPresent(String.self, forKey: .intrastatDeliveryTerms)
            self.intrastatRegion = try container.decodeNullableIfPresent(String.self, forKey: .intrastatRegion)
            self.intrastatNatureOfTransaction = try container.decodeNullableIfPresent(String.self, forKey: .intrastatNatureOfTransaction)
            self.vatCountryCode = try container.decodeNullableIfPresent(String.self, forKey: .vatCountryCode)
            self.deemedSupplier = try container.decodeIfPresent(Bool.self, forKey: .deemedSupplier)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.operationTypeId = try container.decodeNullableIfPresent(String.self, forKey: .operationTypeId)
            self.documentSeriesId = try container.decodeNullableIfPresent(String.self, forKey: .documentSeriesId)
            self.seriesLabel = try container.decodeNullableIfPresent(String.self, forKey: .seriesLabel)
            self.discountPercent = try container.decodeIfPresent(String.self, forKey: .discountPercent)
            self.orderNumber = try container.decodeNullableIfPresent(String.self, forKey: .orderNumber)
            self.issuedByName = try container.decodeNullableIfPresent(String.self, forKey: .issuedByName)
            self.issuedByTitle = try container.decodeNullableIfPresent(String.self, forKey: .issuedByTitle)
            self.receivedByName = try container.decodeNullableIfPresent(String.self, forKey: .receivedByName)
            self.receivedByTitle = try container.decodeNullableIfPresent(String.self, forKey: .receivedByTitle)
            self.lines = try container.decodeIfPresent([InvoicesUpdateSalesRequestLinesItem].self, forKey: .lines)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.partnerId, forKey: .partnerId)
            try container.encodeNullableIfPresent(self.agreementId, forKey: .agreementId)
            try container.encodeIfPresent(self.currency, forKey: .currency)
            try container.encodeNullableIfPresent(self.issueDate, forKey: .issueDate)
            try container.encodeNullableIfPresent(self.dueDate, forKey: .dueDate)
            try container.encodeNullableIfPresent(self.vatScheme, forKey: .vatScheme)
            try container.encodeNullableIfPresent(self.intrastatTransportMode, forKey: .intrastatTransportMode)
            try container.encodeNullableIfPresent(self.intrastatDeliveryTerms, forKey: .intrastatDeliveryTerms)
            try container.encodeNullableIfPresent(self.intrastatRegion, forKey: .intrastatRegion)
            try container.encodeNullableIfPresent(self.intrastatNatureOfTransaction, forKey: .intrastatNatureOfTransaction)
            try container.encodeNullableIfPresent(self.vatCountryCode, forKey: .vatCountryCode)
            try container.encodeIfPresent(self.deemedSupplier, forKey: .deemedSupplier)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encodeNullableIfPresent(self.operationTypeId, forKey: .operationTypeId)
            try container.encodeNullableIfPresent(self.documentSeriesId, forKey: .documentSeriesId)
            try container.encodeNullableIfPresent(self.seriesLabel, forKey: .seriesLabel)
            try container.encodeIfPresent(self.discountPercent, forKey: .discountPercent)
            try container.encodeNullableIfPresent(self.orderNumber, forKey: .orderNumber)
            try container.encodeNullableIfPresent(self.issuedByName, forKey: .issuedByName)
            try container.encodeNullableIfPresent(self.issuedByTitle, forKey: .issuedByTitle)
            try container.encodeNullableIfPresent(self.receivedByName, forKey: .receivedByName)
            try container.encodeNullableIfPresent(self.receivedByTitle, forKey: .receivedByTitle)
            try container.encodeIfPresent(self.lines, forKey: .lines)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case partnerId
            case agreementId
            case currency
            case issueDate
            case dueDate
            case vatScheme
            case intrastatTransportMode
            case intrastatDeliveryTerms
            case intrastatRegion
            case intrastatNatureOfTransaction
            case vatCountryCode
            case deemedSupplier
            case notes
            case operationTypeId
            case documentSeriesId
            case seriesLabel
            case discountPercent
            case orderNumber
            case issuedByName
            case issuedByTitle
            case receivedByName
            case receivedByTitle
            case lines
        }
    }
}