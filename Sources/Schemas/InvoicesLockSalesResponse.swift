import Foundation

public struct InvoicesLockSalesResponse: Codable, Hashable, Sendable {
    public let id: String
    public let partnerId: String
    public let type: InvoicesLockSalesResponseType
    public let status: InvoicesLockSalesResponseStatus
    public let paymentStatus: InvoicesLockSalesResponsePaymentStatus
    public let series: Nullable<String>
    public let number: Nullable<Int64>
    public let fullNumber: Nullable<String>
    public let issueDate: Nullable<CalendarDate>
    public let dueDate: Nullable<CalendarDate>
    public let currency: String
    public let fxRate: Nullable<String>
    public let netTotal: String
    public let vatTotal: String
    public let grossTotal: String
    public let paidAmount: String
    public let journalTransactionId: Nullable<String>
    public let appliedToInvoiceId: Nullable<String>
    public let creditedInvoiceId: Nullable<String>
    public let creditedInvoiceReference: Nullable<String>
    public let creditedInvoiceDate: Nullable<CalendarDate>
    public let agreementId: Nullable<String>
    public let vatScheme: Nullable<InvoicesLockSalesResponseVatScheme>
    public let intrastatTransportMode: Nullable<String>
    public let intrastatDeliveryTerms: Nullable<String>
    public let intrastatRegion: Nullable<String>
    public let intrastatNatureOfTransaction: Nullable<String>
    public let vatCountryCode: Nullable<String>
    public let deemedSupplier: Bool
    public let notes: Nullable<String>
    public let documentRef: Nullable<String>
    public let operationTypeId: Nullable<String>
    public let documentSeriesId: Nullable<String>
    public let seriesLabel: Nullable<String>
    public let discountPercent: String
    public let orderNumber: Nullable<String>
    public let issuedByName: Nullable<String>
    public let issuedByTitle: Nullable<String>
    public let receivedByName: Nullable<String>
    public let receivedByTitle: Nullable<String>
    public let lockedAt: Nullable<Date>
    public let lockedBy: Nullable<String>
    public let payToken: Nullable<String>
    public let einvoiceSystem: Nullable<String>
    public let einvoiceTransport: Nullable<String>
    public let einvoiceMessageId: Nullable<String>
    public let einvoiceNumber: Nullable<String>
    public let einvoiceStatus: Nullable<String>
    public let einvoiceDetail: Nullable<String>
    public let einvoiceSentAt: Nullable<Date>
    public let einvoiceCheckedAt: Nullable<Date>
    public let createdAt: Date
    public let updatedAt: Date
    public let lines: [InvoicesLockSalesResponseLinesItem]
    public let vatEvidence: Nullable<InvoicesLockSalesResponseVatEvidence>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        partnerId: String,
        type: InvoicesLockSalesResponseType,
        status: InvoicesLockSalesResponseStatus,
        paymentStatus: InvoicesLockSalesResponsePaymentStatus,
        series: Nullable<String>,
        number: Nullable<Int64>,
        fullNumber: Nullable<String>,
        issueDate: Nullable<CalendarDate>,
        dueDate: Nullable<CalendarDate>,
        currency: String,
        fxRate: Nullable<String>,
        netTotal: String,
        vatTotal: String,
        grossTotal: String,
        paidAmount: String,
        journalTransactionId: Nullable<String>,
        appliedToInvoiceId: Nullable<String>,
        creditedInvoiceId: Nullable<String>,
        creditedInvoiceReference: Nullable<String>,
        creditedInvoiceDate: Nullable<CalendarDate>,
        agreementId: Nullable<String>,
        vatScheme: Nullable<InvoicesLockSalesResponseVatScheme>,
        intrastatTransportMode: Nullable<String>,
        intrastatDeliveryTerms: Nullable<String>,
        intrastatRegion: Nullable<String>,
        intrastatNatureOfTransaction: Nullable<String>,
        vatCountryCode: Nullable<String>,
        deemedSupplier: Bool,
        notes: Nullable<String>,
        documentRef: Nullable<String>,
        operationTypeId: Nullable<String>,
        documentSeriesId: Nullable<String>,
        seriesLabel: Nullable<String>,
        discountPercent: String,
        orderNumber: Nullable<String>,
        issuedByName: Nullable<String>,
        issuedByTitle: Nullable<String>,
        receivedByName: Nullable<String>,
        receivedByTitle: Nullable<String>,
        lockedAt: Nullable<Date>,
        lockedBy: Nullable<String>,
        payToken: Nullable<String>,
        einvoiceSystem: Nullable<String>,
        einvoiceTransport: Nullable<String>,
        einvoiceMessageId: Nullable<String>,
        einvoiceNumber: Nullable<String>,
        einvoiceStatus: Nullable<String>,
        einvoiceDetail: Nullable<String>,
        einvoiceSentAt: Nullable<Date>,
        einvoiceCheckedAt: Nullable<Date>,
        createdAt: Date,
        updatedAt: Date,
        lines: [InvoicesLockSalesResponseLinesItem],
        vatEvidence: Nullable<InvoicesLockSalesResponseVatEvidence>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.partnerId = partnerId
        self.type = type
        self.status = status
        self.paymentStatus = paymentStatus
        self.series = series
        self.number = number
        self.fullNumber = fullNumber
        self.issueDate = issueDate
        self.dueDate = dueDate
        self.currency = currency
        self.fxRate = fxRate
        self.netTotal = netTotal
        self.vatTotal = vatTotal
        self.grossTotal = grossTotal
        self.paidAmount = paidAmount
        self.journalTransactionId = journalTransactionId
        self.appliedToInvoiceId = appliedToInvoiceId
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
        self.operationTypeId = operationTypeId
        self.documentSeriesId = documentSeriesId
        self.seriesLabel = seriesLabel
        self.discountPercent = discountPercent
        self.orderNumber = orderNumber
        self.issuedByName = issuedByName
        self.issuedByTitle = issuedByTitle
        self.receivedByName = receivedByName
        self.receivedByTitle = receivedByTitle
        self.lockedAt = lockedAt
        self.lockedBy = lockedBy
        self.payToken = payToken
        self.einvoiceSystem = einvoiceSystem
        self.einvoiceTransport = einvoiceTransport
        self.einvoiceMessageId = einvoiceMessageId
        self.einvoiceNumber = einvoiceNumber
        self.einvoiceStatus = einvoiceStatus
        self.einvoiceDetail = einvoiceDetail
        self.einvoiceSentAt = einvoiceSentAt
        self.einvoiceCheckedAt = einvoiceCheckedAt
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.lines = lines
        self.vatEvidence = vatEvidence
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.partnerId = try container.decode(String.self, forKey: .partnerId)
        self.type = try container.decode(InvoicesLockSalesResponseType.self, forKey: .type)
        self.status = try container.decode(InvoicesLockSalesResponseStatus.self, forKey: .status)
        self.paymentStatus = try container.decode(InvoicesLockSalesResponsePaymentStatus.self, forKey: .paymentStatus)
        self.series = try container.decode(Nullable<String>.self, forKey: .series)
        self.number = try container.decode(Nullable<Int64>.self, forKey: .number)
        self.fullNumber = try container.decode(Nullable<String>.self, forKey: .fullNumber)
        self.issueDate = try container.decode(Nullable<CalendarDate>.self, forKey: .issueDate)
        self.dueDate = try container.decode(Nullable<CalendarDate>.self, forKey: .dueDate)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.fxRate = try container.decode(Nullable<String>.self, forKey: .fxRate)
        self.netTotal = try container.decode(String.self, forKey: .netTotal)
        self.vatTotal = try container.decode(String.self, forKey: .vatTotal)
        self.grossTotal = try container.decode(String.self, forKey: .grossTotal)
        self.paidAmount = try container.decode(String.self, forKey: .paidAmount)
        self.journalTransactionId = try container.decode(Nullable<String>.self, forKey: .journalTransactionId)
        self.appliedToInvoiceId = try container.decode(Nullable<String>.self, forKey: .appliedToInvoiceId)
        self.creditedInvoiceId = try container.decode(Nullable<String>.self, forKey: .creditedInvoiceId)
        self.creditedInvoiceReference = try container.decode(Nullable<String>.self, forKey: .creditedInvoiceReference)
        self.creditedInvoiceDate = try container.decode(Nullable<CalendarDate>.self, forKey: .creditedInvoiceDate)
        self.agreementId = try container.decode(Nullable<String>.self, forKey: .agreementId)
        self.vatScheme = try container.decode(Nullable<InvoicesLockSalesResponseVatScheme>.self, forKey: .vatScheme)
        self.intrastatTransportMode = try container.decode(Nullable<String>.self, forKey: .intrastatTransportMode)
        self.intrastatDeliveryTerms = try container.decode(Nullable<String>.self, forKey: .intrastatDeliveryTerms)
        self.intrastatRegion = try container.decode(Nullable<String>.self, forKey: .intrastatRegion)
        self.intrastatNatureOfTransaction = try container.decode(Nullable<String>.self, forKey: .intrastatNatureOfTransaction)
        self.vatCountryCode = try container.decode(Nullable<String>.self, forKey: .vatCountryCode)
        self.deemedSupplier = try container.decode(Bool.self, forKey: .deemedSupplier)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.documentRef = try container.decode(Nullable<String>.self, forKey: .documentRef)
        self.operationTypeId = try container.decode(Nullable<String>.self, forKey: .operationTypeId)
        self.documentSeriesId = try container.decode(Nullable<String>.self, forKey: .documentSeriesId)
        self.seriesLabel = try container.decode(Nullable<String>.self, forKey: .seriesLabel)
        self.discountPercent = try container.decode(String.self, forKey: .discountPercent)
        self.orderNumber = try container.decode(Nullable<String>.self, forKey: .orderNumber)
        self.issuedByName = try container.decode(Nullable<String>.self, forKey: .issuedByName)
        self.issuedByTitle = try container.decode(Nullable<String>.self, forKey: .issuedByTitle)
        self.receivedByName = try container.decode(Nullable<String>.self, forKey: .receivedByName)
        self.receivedByTitle = try container.decode(Nullable<String>.self, forKey: .receivedByTitle)
        self.lockedAt = try container.decode(Nullable<Date>.self, forKey: .lockedAt)
        self.lockedBy = try container.decode(Nullable<String>.self, forKey: .lockedBy)
        self.payToken = try container.decode(Nullable<String>.self, forKey: .payToken)
        self.einvoiceSystem = try container.decode(Nullable<String>.self, forKey: .einvoiceSystem)
        self.einvoiceTransport = try container.decode(Nullable<String>.self, forKey: .einvoiceTransport)
        self.einvoiceMessageId = try container.decode(Nullable<String>.self, forKey: .einvoiceMessageId)
        self.einvoiceNumber = try container.decode(Nullable<String>.self, forKey: .einvoiceNumber)
        self.einvoiceStatus = try container.decode(Nullable<String>.self, forKey: .einvoiceStatus)
        self.einvoiceDetail = try container.decode(Nullable<String>.self, forKey: .einvoiceDetail)
        self.einvoiceSentAt = try container.decode(Nullable<Date>.self, forKey: .einvoiceSentAt)
        self.einvoiceCheckedAt = try container.decode(Nullable<Date>.self, forKey: .einvoiceCheckedAt)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.updatedAt = try container.decode(Date.self, forKey: .updatedAt)
        self.lines = try container.decode([InvoicesLockSalesResponseLinesItem].self, forKey: .lines)
        self.vatEvidence = try container.decode(Nullable<InvoicesLockSalesResponseVatEvidence>.self, forKey: .vatEvidence)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.partnerId, forKey: .partnerId)
        try container.encode(self.type, forKey: .type)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.paymentStatus, forKey: .paymentStatus)
        try container.encode(self.series, forKey: .series)
        try container.encode(self.number, forKey: .number)
        try container.encode(self.fullNumber, forKey: .fullNumber)
        try container.encode(self.issueDate, forKey: .issueDate)
        try container.encode(self.dueDate, forKey: .dueDate)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.fxRate, forKey: .fxRate)
        try container.encode(self.netTotal, forKey: .netTotal)
        try container.encode(self.vatTotal, forKey: .vatTotal)
        try container.encode(self.grossTotal, forKey: .grossTotal)
        try container.encode(self.paidAmount, forKey: .paidAmount)
        try container.encode(self.journalTransactionId, forKey: .journalTransactionId)
        try container.encode(self.appliedToInvoiceId, forKey: .appliedToInvoiceId)
        try container.encode(self.creditedInvoiceId, forKey: .creditedInvoiceId)
        try container.encode(self.creditedInvoiceReference, forKey: .creditedInvoiceReference)
        try container.encode(self.creditedInvoiceDate, forKey: .creditedInvoiceDate)
        try container.encode(self.agreementId, forKey: .agreementId)
        try container.encode(self.vatScheme, forKey: .vatScheme)
        try container.encode(self.intrastatTransportMode, forKey: .intrastatTransportMode)
        try container.encode(self.intrastatDeliveryTerms, forKey: .intrastatDeliveryTerms)
        try container.encode(self.intrastatRegion, forKey: .intrastatRegion)
        try container.encode(self.intrastatNatureOfTransaction, forKey: .intrastatNatureOfTransaction)
        try container.encode(self.vatCountryCode, forKey: .vatCountryCode)
        try container.encode(self.deemedSupplier, forKey: .deemedSupplier)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.documentRef, forKey: .documentRef)
        try container.encode(self.operationTypeId, forKey: .operationTypeId)
        try container.encode(self.documentSeriesId, forKey: .documentSeriesId)
        try container.encode(self.seriesLabel, forKey: .seriesLabel)
        try container.encode(self.discountPercent, forKey: .discountPercent)
        try container.encode(self.orderNumber, forKey: .orderNumber)
        try container.encode(self.issuedByName, forKey: .issuedByName)
        try container.encode(self.issuedByTitle, forKey: .issuedByTitle)
        try container.encode(self.receivedByName, forKey: .receivedByName)
        try container.encode(self.receivedByTitle, forKey: .receivedByTitle)
        try container.encode(self.lockedAt, forKey: .lockedAt)
        try container.encode(self.lockedBy, forKey: .lockedBy)
        try container.encode(self.payToken, forKey: .payToken)
        try container.encode(self.einvoiceSystem, forKey: .einvoiceSystem)
        try container.encode(self.einvoiceTransport, forKey: .einvoiceTransport)
        try container.encode(self.einvoiceMessageId, forKey: .einvoiceMessageId)
        try container.encode(self.einvoiceNumber, forKey: .einvoiceNumber)
        try container.encode(self.einvoiceStatus, forKey: .einvoiceStatus)
        try container.encode(self.einvoiceDetail, forKey: .einvoiceDetail)
        try container.encode(self.einvoiceSentAt, forKey: .einvoiceSentAt)
        try container.encode(self.einvoiceCheckedAt, forKey: .einvoiceCheckedAt)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.updatedAt, forKey: .updatedAt)
        try container.encode(self.lines, forKey: .lines)
        try container.encode(self.vatEvidence, forKey: .vatEvidence)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case partnerId
        case type
        case status
        case paymentStatus
        case series
        case number
        case fullNumber
        case issueDate
        case dueDate
        case currency
        case fxRate
        case netTotal
        case vatTotal
        case grossTotal
        case paidAmount
        case journalTransactionId
        case appliedToInvoiceId
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
        case operationTypeId
        case documentSeriesId
        case seriesLabel
        case discountPercent
        case orderNumber
        case issuedByName
        case issuedByTitle
        case receivedByName
        case receivedByTitle
        case lockedAt
        case lockedBy
        case payToken
        case einvoiceSystem
        case einvoiceTransport
        case einvoiceMessageId
        case einvoiceNumber
        case einvoiceStatus
        case einvoiceDetail
        case einvoiceSentAt
        case einvoiceCheckedAt
        case createdAt
        case updatedAt
        case lines
        case vatEvidence
    }
}