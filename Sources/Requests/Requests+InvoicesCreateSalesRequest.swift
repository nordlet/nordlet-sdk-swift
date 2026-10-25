import Foundation

extension Requests {
    public struct InvoicesCreateSalesRequest: Codable, Hashable, Sendable {
        public let partnerId: String
        public let type: InvoicesCreateSalesRequestType?
        public let currency: String?
        public let issueDate: CalendarDate?
        public let dueDate: CalendarDate?
        public let creditedInvoiceId: String?
        /// Number of an original invoice issued outside Nordlet; give it with creditedInvoiceDate
        public let creditedInvoiceReference: String?
        /// Issue date of the original invoice issued outside Nordlet
        public let creditedInvoiceDate: CalendarDate?
        public let agreementId: String?
        public let vatScheme: InvoicesCreateSalesRequestVatScheme?
        public let intrastatTransportMode: String?
        public let intrastatDeliveryTerms: String?
        public let intrastatRegion: String?
        public let intrastatNatureOfTransaction: String?
        public let vatCountryCode: String?
        public let deemedSupplier: Bool?
        public let notes: String?
        public let documentRef: String?
        /// Language of the PDF and of the e-mail the invoice is sent with; unset means the language asked for when the PDF is made
        public let locale: InvoicesCreateSalesRequestLocale?
        /// Whether the PDF and the e-mail carry the payment link of the company payment link template
        public let payLinkEnabled: Bool?
        /// Whether automatic debt reminders include this invoice when its partner has them turned on
        public let debtRemindersEnabled: Bool?
        public let operationTypeId: String?
        public let documentSeriesId: String?
        public let seriesLabel: String?
        public let orderNumber: String?
        public let issuedByName: String?
        public let issuedByTitle: String?
        public let receivedByName: String?
        public let receivedByTitle: String?
        public let discountPercent: String?
        /// Sales tax as a percent of the net total, added to the invoice total. It is not posted to the ledger and is left out of VAT and national tax reports. Invoices only.
        public let salesTaxPercent: String?
        public let lines: [InvoicesCreateSalesRequestLinesItem]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            partnerId: String,
            type: InvoicesCreateSalesRequestType? = nil,
            currency: String? = nil,
            issueDate: CalendarDate? = nil,
            dueDate: CalendarDate? = nil,
            creditedInvoiceId: String? = nil,
            creditedInvoiceReference: String? = nil,
            creditedInvoiceDate: CalendarDate? = nil,
            agreementId: String? = nil,
            vatScheme: InvoicesCreateSalesRequestVatScheme? = nil,
            intrastatTransportMode: String? = nil,
            intrastatDeliveryTerms: String? = nil,
            intrastatRegion: String? = nil,
            intrastatNatureOfTransaction: String? = nil,
            vatCountryCode: String? = nil,
            deemedSupplier: Bool? = nil,
            notes: String? = nil,
            documentRef: String? = nil,
            locale: InvoicesCreateSalesRequestLocale? = nil,
            payLinkEnabled: Bool? = nil,
            debtRemindersEnabled: Bool? = nil,
            operationTypeId: String? = nil,
            documentSeriesId: String? = nil,
            seriesLabel: String? = nil,
            orderNumber: String? = nil,
            issuedByName: String? = nil,
            issuedByTitle: String? = nil,
            receivedByName: String? = nil,
            receivedByTitle: String? = nil,
            discountPercent: String? = nil,
            salesTaxPercent: String? = nil,
            lines: [InvoicesCreateSalesRequestLinesItem],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.partnerId = partnerId
            self.type = type
            self.currency = currency
            self.issueDate = issueDate
            self.dueDate = dueDate
            self.creditedInvoiceId = creditedInvoiceId
            self.creditedInvoiceReference = creditedInvoiceReference
            self.creditedInvoiceDate = creditedInvoiceDate
            self.agreementId = agreementId
            self.vatScheme = vatScheme
            self.intrastatTransportMode = intrastatTransportMode
            self.intrastatDeliveryTerms = intrastatDeliveryTerms
            self.intrastatRegion = intrastatRegion
            self.intrastatNatureOfTransaction = intrastatNatureOfTransaction
            self.vatCountryCode = vatCountryCode
            self.deemedSupplier = deemedSupplier
            self.notes = notes
            self.documentRef = documentRef
            self.locale = locale
            self.payLinkEnabled = payLinkEnabled
            self.debtRemindersEnabled = debtRemindersEnabled
            self.operationTypeId = operationTypeId
            self.documentSeriesId = documentSeriesId
            self.seriesLabel = seriesLabel
            self.orderNumber = orderNumber
            self.issuedByName = issuedByName
            self.issuedByTitle = issuedByTitle
            self.receivedByName = receivedByName
            self.receivedByTitle = receivedByTitle
            self.discountPercent = discountPercent
            self.salesTaxPercent = salesTaxPercent
            self.lines = lines
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.partnerId = try container.decode(String.self, forKey: .partnerId)
            self.type = try container.decodeIfPresent(InvoicesCreateSalesRequestType.self, forKey: .type)
            self.currency = try container.decodeIfPresent(String.self, forKey: .currency)
            self.issueDate = try container.decodeIfPresent(CalendarDate.self, forKey: .issueDate)
            self.dueDate = try container.decodeIfPresent(CalendarDate.self, forKey: .dueDate)
            self.creditedInvoiceId = try container.decodeIfPresent(String.self, forKey: .creditedInvoiceId)
            self.creditedInvoiceReference = try container.decodeIfPresent(String.self, forKey: .creditedInvoiceReference)
            self.creditedInvoiceDate = try container.decodeIfPresent(CalendarDate.self, forKey: .creditedInvoiceDate)
            self.agreementId = try container.decodeIfPresent(String.self, forKey: .agreementId)
            self.vatScheme = try container.decodeIfPresent(InvoicesCreateSalesRequestVatScheme.self, forKey: .vatScheme)
            self.intrastatTransportMode = try container.decodeIfPresent(String.self, forKey: .intrastatTransportMode)
            self.intrastatDeliveryTerms = try container.decodeIfPresent(String.self, forKey: .intrastatDeliveryTerms)
            self.intrastatRegion = try container.decodeIfPresent(String.self, forKey: .intrastatRegion)
            self.intrastatNatureOfTransaction = try container.decodeIfPresent(String.self, forKey: .intrastatNatureOfTransaction)
            self.vatCountryCode = try container.decodeIfPresent(String.self, forKey: .vatCountryCode)
            self.deemedSupplier = try container.decodeIfPresent(Bool.self, forKey: .deemedSupplier)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.documentRef = try container.decodeIfPresent(String.self, forKey: .documentRef)
            self.locale = try container.decodeIfPresent(InvoicesCreateSalesRequestLocale.self, forKey: .locale)
            self.payLinkEnabled = try container.decodeIfPresent(Bool.self, forKey: .payLinkEnabled)
            self.debtRemindersEnabled = try container.decodeIfPresent(Bool.self, forKey: .debtRemindersEnabled)
            self.operationTypeId = try container.decodeIfPresent(String.self, forKey: .operationTypeId)
            self.documentSeriesId = try container.decodeIfPresent(String.self, forKey: .documentSeriesId)
            self.seriesLabel = try container.decodeIfPresent(String.self, forKey: .seriesLabel)
            self.orderNumber = try container.decodeIfPresent(String.self, forKey: .orderNumber)
            self.issuedByName = try container.decodeIfPresent(String.self, forKey: .issuedByName)
            self.issuedByTitle = try container.decodeIfPresent(String.self, forKey: .issuedByTitle)
            self.receivedByName = try container.decodeIfPresent(String.self, forKey: .receivedByName)
            self.receivedByTitle = try container.decodeIfPresent(String.self, forKey: .receivedByTitle)
            self.discountPercent = try container.decodeIfPresent(String.self, forKey: .discountPercent)
            self.salesTaxPercent = try container.decodeIfPresent(String.self, forKey: .salesTaxPercent)
            self.lines = try container.decode([InvoicesCreateSalesRequestLinesItem].self, forKey: .lines)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.partnerId, forKey: .partnerId)
            try container.encodeIfPresent(self.type, forKey: .type)
            try container.encodeIfPresent(self.currency, forKey: .currency)
            try container.encodeIfPresent(self.issueDate, forKey: .issueDate)
            try container.encodeIfPresent(self.dueDate, forKey: .dueDate)
            try container.encodeIfPresent(self.creditedInvoiceId, forKey: .creditedInvoiceId)
            try container.encodeIfPresent(self.creditedInvoiceReference, forKey: .creditedInvoiceReference)
            try container.encodeIfPresent(self.creditedInvoiceDate, forKey: .creditedInvoiceDate)
            try container.encodeIfPresent(self.agreementId, forKey: .agreementId)
            try container.encodeIfPresent(self.vatScheme, forKey: .vatScheme)
            try container.encodeIfPresent(self.intrastatTransportMode, forKey: .intrastatTransportMode)
            try container.encodeIfPresent(self.intrastatDeliveryTerms, forKey: .intrastatDeliveryTerms)
            try container.encodeIfPresent(self.intrastatRegion, forKey: .intrastatRegion)
            try container.encodeIfPresent(self.intrastatNatureOfTransaction, forKey: .intrastatNatureOfTransaction)
            try container.encodeIfPresent(self.vatCountryCode, forKey: .vatCountryCode)
            try container.encodeIfPresent(self.deemedSupplier, forKey: .deemedSupplier)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encodeIfPresent(self.documentRef, forKey: .documentRef)
            try container.encodeIfPresent(self.locale, forKey: .locale)
            try container.encodeIfPresent(self.payLinkEnabled, forKey: .payLinkEnabled)
            try container.encodeIfPresent(self.debtRemindersEnabled, forKey: .debtRemindersEnabled)
            try container.encodeIfPresent(self.operationTypeId, forKey: .operationTypeId)
            try container.encodeIfPresent(self.documentSeriesId, forKey: .documentSeriesId)
            try container.encodeIfPresent(self.seriesLabel, forKey: .seriesLabel)
            try container.encodeIfPresent(self.orderNumber, forKey: .orderNumber)
            try container.encodeIfPresent(self.issuedByName, forKey: .issuedByName)
            try container.encodeIfPresent(self.issuedByTitle, forKey: .issuedByTitle)
            try container.encodeIfPresent(self.receivedByName, forKey: .receivedByName)
            try container.encodeIfPresent(self.receivedByTitle, forKey: .receivedByTitle)
            try container.encodeIfPresent(self.discountPercent, forKey: .discountPercent)
            try container.encodeIfPresent(self.salesTaxPercent, forKey: .salesTaxPercent)
            try container.encode(self.lines, forKey: .lines)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case partnerId
            case type
            case currency
            case issueDate
            case dueDate
            case creditedInvoiceId
            case creditedInvoiceReference
            case creditedInvoiceDate
            case agreementId
            case vatScheme
            case intrastatTransportMode
            case intrastatDeliveryTerms
            case intrastatRegion
            case intrastatNatureOfTransaction
            case vatCountryCode
            case deemedSupplier
            case notes
            case documentRef
            case locale
            case payLinkEnabled
            case debtRemindersEnabled
            case operationTypeId
            case documentSeriesId
            case seriesLabel
            case orderNumber
            case issuedByName
            case issuedByTitle
            case receivedByName
            case receivedByTitle
            case discountPercent
            case salesTaxPercent
            case lines
        }
    }
}