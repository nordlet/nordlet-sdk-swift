import Foundation

public struct PostV1PurchasesInvoicesRegisterResponse: Codable, Hashable, Sendable {
    public let id: String
    public let partnerId: String
    public let type: PostV1PurchasesInvoicesRegisterResponseType
    public let status: PostV1PurchasesInvoicesRegisterResponseStatus
    public let paymentStatus: PostV1PurchasesInvoicesRegisterResponsePaymentStatus
    public let documentNumber: String
    public let documentDate: String
    public let dueDate: Nullable<String>
    public let registrationDate: Nullable<String>
    public let currency: String
    public let netTotal: String
    public let vatTotal: String
    public let grossTotal: String
    public let paidAmount: String
    public let journalTransactionId: Nullable<String>
    public let creditedInvoiceId: Nullable<String>
    public let purchaseOrderId: Nullable<String>
    public let operationTypeId: Nullable<String>
    public let notes: Nullable<String>
    public let intrastatTransportMode: Nullable<String>
    public let intrastatDeliveryTerms: Nullable<String>
    public let intrastatRegion: Nullable<String>
    public let intrastatNatureOfTransaction: Nullable<String>
    public let einvoiceNumber: Nullable<String>
    public let documentRef: Nullable<String>
    public let createdAt: String
    public let updatedAt: String
    public let lines: [PostV1PurchasesInvoicesRegisterResponseLinesItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        partnerId: String,
        type: PostV1PurchasesInvoicesRegisterResponseType,
        status: PostV1PurchasesInvoicesRegisterResponseStatus,
        paymentStatus: PostV1PurchasesInvoicesRegisterResponsePaymentStatus,
        documentNumber: String,
        documentDate: String,
        dueDate: Nullable<String>,
        registrationDate: Nullable<String>,
        currency: String,
        netTotal: String,
        vatTotal: String,
        grossTotal: String,
        paidAmount: String,
        journalTransactionId: Nullable<String>,
        creditedInvoiceId: Nullable<String>,
        purchaseOrderId: Nullable<String>,
        operationTypeId: Nullable<String>,
        notes: Nullable<String>,
        intrastatTransportMode: Nullable<String>,
        intrastatDeliveryTerms: Nullable<String>,
        intrastatRegion: Nullable<String>,
        intrastatNatureOfTransaction: Nullable<String>,
        einvoiceNumber: Nullable<String>,
        documentRef: Nullable<String>,
        createdAt: String,
        updatedAt: String,
        lines: [PostV1PurchasesInvoicesRegisterResponseLinesItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.partnerId = partnerId
        self.type = type
        self.status = status
        self.paymentStatus = paymentStatus
        self.documentNumber = documentNumber
        self.documentDate = documentDate
        self.dueDate = dueDate
        self.registrationDate = registrationDate
        self.currency = currency
        self.netTotal = netTotal
        self.vatTotal = vatTotal
        self.grossTotal = grossTotal
        self.paidAmount = paidAmount
        self.journalTransactionId = journalTransactionId
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
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.lines = lines
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.partnerId = try container.decode(String.self, forKey: .partnerId)
        self.type = try container.decode(PostV1PurchasesInvoicesRegisterResponseType.self, forKey: .type)
        self.status = try container.decode(PostV1PurchasesInvoicesRegisterResponseStatus.self, forKey: .status)
        self.paymentStatus = try container.decode(PostV1PurchasesInvoicesRegisterResponsePaymentStatus.self, forKey: .paymentStatus)
        self.documentNumber = try container.decode(String.self, forKey: .documentNumber)
        self.documentDate = try container.decode(String.self, forKey: .documentDate)
        self.dueDate = try container.decode(Nullable<String>.self, forKey: .dueDate)
        self.registrationDate = try container.decode(Nullable<String>.self, forKey: .registrationDate)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.netTotal = try container.decode(String.self, forKey: .netTotal)
        self.vatTotal = try container.decode(String.self, forKey: .vatTotal)
        self.grossTotal = try container.decode(String.self, forKey: .grossTotal)
        self.paidAmount = try container.decode(String.self, forKey: .paidAmount)
        self.journalTransactionId = try container.decode(Nullable<String>.self, forKey: .journalTransactionId)
        self.creditedInvoiceId = try container.decode(Nullable<String>.self, forKey: .creditedInvoiceId)
        self.purchaseOrderId = try container.decode(Nullable<String>.self, forKey: .purchaseOrderId)
        self.operationTypeId = try container.decode(Nullable<String>.self, forKey: .operationTypeId)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.intrastatTransportMode = try container.decode(Nullable<String>.self, forKey: .intrastatTransportMode)
        self.intrastatDeliveryTerms = try container.decode(Nullable<String>.self, forKey: .intrastatDeliveryTerms)
        self.intrastatRegion = try container.decode(Nullable<String>.self, forKey: .intrastatRegion)
        self.intrastatNatureOfTransaction = try container.decode(Nullable<String>.self, forKey: .intrastatNatureOfTransaction)
        self.einvoiceNumber = try container.decode(Nullable<String>.self, forKey: .einvoiceNumber)
        self.documentRef = try container.decode(Nullable<String>.self, forKey: .documentRef)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.updatedAt = try container.decode(String.self, forKey: .updatedAt)
        self.lines = try container.decode([PostV1PurchasesInvoicesRegisterResponseLinesItem].self, forKey: .lines)
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
        try container.encode(self.documentNumber, forKey: .documentNumber)
        try container.encode(self.documentDate, forKey: .documentDate)
        try container.encode(self.dueDate, forKey: .dueDate)
        try container.encode(self.registrationDate, forKey: .registrationDate)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.netTotal, forKey: .netTotal)
        try container.encode(self.vatTotal, forKey: .vatTotal)
        try container.encode(self.grossTotal, forKey: .grossTotal)
        try container.encode(self.paidAmount, forKey: .paidAmount)
        try container.encode(self.journalTransactionId, forKey: .journalTransactionId)
        try container.encode(self.creditedInvoiceId, forKey: .creditedInvoiceId)
        try container.encode(self.purchaseOrderId, forKey: .purchaseOrderId)
        try container.encode(self.operationTypeId, forKey: .operationTypeId)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.intrastatTransportMode, forKey: .intrastatTransportMode)
        try container.encode(self.intrastatDeliveryTerms, forKey: .intrastatDeliveryTerms)
        try container.encode(self.intrastatRegion, forKey: .intrastatRegion)
        try container.encode(self.intrastatNatureOfTransaction, forKey: .intrastatNatureOfTransaction)
        try container.encode(self.einvoiceNumber, forKey: .einvoiceNumber)
        try container.encode(self.documentRef, forKey: .documentRef)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.updatedAt, forKey: .updatedAt)
        try container.encode(self.lines, forKey: .lines)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case partnerId
        case type
        case status
        case paymentStatus
        case documentNumber
        case documentDate
        case dueDate
        case registrationDate
        case currency
        case netTotal
        case vatTotal
        case grossTotal
        case paidAmount
        case journalTransactionId
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
        case createdAt
        case updatedAt
        case lines
    }
}