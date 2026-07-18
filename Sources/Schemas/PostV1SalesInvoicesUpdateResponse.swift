import Foundation

public struct PostV1SalesInvoicesUpdateResponse: Codable, Hashable, Sendable {
    public let id: String
    public let partnerId: String
    public let type: PostV1SalesInvoicesUpdateResponseType
    public let status: PostV1SalesInvoicesUpdateResponseStatus
    public let paymentStatus: PostV1SalesInvoicesUpdateResponsePaymentStatus
    public let series: Nullable<String>
    public let number: Nullable<Int64>
    public let fullNumber: Nullable<String>
    public let issueDate: Nullable<String>
    public let dueDate: Nullable<String>
    public let currency: String
    public let netTotal: String
    public let vatTotal: String
    public let grossTotal: String
    public let paidAmount: String
    public let journalTransactionId: Nullable<String>
    public let appliedToInvoiceId: Nullable<String>
    public let creditedInvoiceId: Nullable<String>
    public let agreementId: Nullable<String>
    public let vatScheme: Nullable<PostV1SalesInvoicesUpdateResponseVatScheme>
    public let vatCountryCode: Nullable<String>
    public let deemedSupplier: Bool
    public let notes: Nullable<String>
    public let createdAt: String
    public let updatedAt: String
    public let lines: [PostV1SalesInvoicesUpdateResponseLinesItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        partnerId: String,
        type: PostV1SalesInvoicesUpdateResponseType,
        status: PostV1SalesInvoicesUpdateResponseStatus,
        paymentStatus: PostV1SalesInvoicesUpdateResponsePaymentStatus,
        series: Nullable<String>,
        number: Nullable<Int64>,
        fullNumber: Nullable<String>,
        issueDate: Nullable<String>,
        dueDate: Nullable<String>,
        currency: String,
        netTotal: String,
        vatTotal: String,
        grossTotal: String,
        paidAmount: String,
        journalTransactionId: Nullable<String>,
        appliedToInvoiceId: Nullable<String>,
        creditedInvoiceId: Nullable<String>,
        agreementId: Nullable<String>,
        vatScheme: Nullable<PostV1SalesInvoicesUpdateResponseVatScheme>,
        vatCountryCode: Nullable<String>,
        deemedSupplier: Bool,
        notes: Nullable<String>,
        createdAt: String,
        updatedAt: String,
        lines: [PostV1SalesInvoicesUpdateResponseLinesItem],
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
        self.netTotal = netTotal
        self.vatTotal = vatTotal
        self.grossTotal = grossTotal
        self.paidAmount = paidAmount
        self.journalTransactionId = journalTransactionId
        self.appliedToInvoiceId = appliedToInvoiceId
        self.creditedInvoiceId = creditedInvoiceId
        self.agreementId = agreementId
        self.vatScheme = vatScheme
        self.vatCountryCode = vatCountryCode
        self.deemedSupplier = deemedSupplier
        self.notes = notes
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.lines = lines
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.partnerId = try container.decode(String.self, forKey: .partnerId)
        self.type = try container.decode(PostV1SalesInvoicesUpdateResponseType.self, forKey: .type)
        self.status = try container.decode(PostV1SalesInvoicesUpdateResponseStatus.self, forKey: .status)
        self.paymentStatus = try container.decode(PostV1SalesInvoicesUpdateResponsePaymentStatus.self, forKey: .paymentStatus)
        self.series = try container.decode(Nullable<String>.self, forKey: .series)
        self.number = try container.decode(Nullable<Int64>.self, forKey: .number)
        self.fullNumber = try container.decode(Nullable<String>.self, forKey: .fullNumber)
        self.issueDate = try container.decode(Nullable<String>.self, forKey: .issueDate)
        self.dueDate = try container.decode(Nullable<String>.self, forKey: .dueDate)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.netTotal = try container.decode(String.self, forKey: .netTotal)
        self.vatTotal = try container.decode(String.self, forKey: .vatTotal)
        self.grossTotal = try container.decode(String.self, forKey: .grossTotal)
        self.paidAmount = try container.decode(String.self, forKey: .paidAmount)
        self.journalTransactionId = try container.decode(Nullable<String>.self, forKey: .journalTransactionId)
        self.appliedToInvoiceId = try container.decode(Nullable<String>.self, forKey: .appliedToInvoiceId)
        self.creditedInvoiceId = try container.decode(Nullable<String>.self, forKey: .creditedInvoiceId)
        self.agreementId = try container.decode(Nullable<String>.self, forKey: .agreementId)
        self.vatScheme = try container.decode(Nullable<PostV1SalesInvoicesUpdateResponseVatScheme>.self, forKey: .vatScheme)
        self.vatCountryCode = try container.decode(Nullable<String>.self, forKey: .vatCountryCode)
        self.deemedSupplier = try container.decode(Bool.self, forKey: .deemedSupplier)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.updatedAt = try container.decode(String.self, forKey: .updatedAt)
        self.lines = try container.decode([PostV1SalesInvoicesUpdateResponseLinesItem].self, forKey: .lines)
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
        try container.encode(self.netTotal, forKey: .netTotal)
        try container.encode(self.vatTotal, forKey: .vatTotal)
        try container.encode(self.grossTotal, forKey: .grossTotal)
        try container.encode(self.paidAmount, forKey: .paidAmount)
        try container.encode(self.journalTransactionId, forKey: .journalTransactionId)
        try container.encode(self.appliedToInvoiceId, forKey: .appliedToInvoiceId)
        try container.encode(self.creditedInvoiceId, forKey: .creditedInvoiceId)
        try container.encode(self.agreementId, forKey: .agreementId)
        try container.encode(self.vatScheme, forKey: .vatScheme)
        try container.encode(self.vatCountryCode, forKey: .vatCountryCode)
        try container.encode(self.deemedSupplier, forKey: .deemedSupplier)
        try container.encode(self.notes, forKey: .notes)
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
        case series
        case number
        case fullNumber
        case issueDate
        case dueDate
        case currency
        case netTotal
        case vatTotal
        case grossTotal
        case paidAmount
        case journalTransactionId
        case appliedToInvoiceId
        case creditedInvoiceId
        case agreementId
        case vatScheme
        case vatCountryCode
        case deemedSupplier
        case notes
        case createdAt
        case updatedAt
        case lines
    }
}