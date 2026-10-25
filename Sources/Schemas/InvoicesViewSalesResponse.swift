import Foundation

public struct InvoicesViewSalesResponse: Codable, Hashable, Sendable {
    public let type: InvoicesViewSalesResponseType
    public let status: InvoicesViewSalesResponseStatus
    public let paymentStatus: InvoicesViewSalesResponsePaymentStatus
    public let number: Nullable<String>
    public let issueDate: Nullable<CalendarDate>
    public let dueDate: Nullable<CalendarDate>
    public let currency: String
    public let netTotal: String
    public let vatTotal: String
    public let salesTaxPercent: Nullable<String>
    public let salesTaxTotal: String
    public let grossTotal: String
    public let paidAmount: String
    public let paidOn: Nullable<String>
    public let notes: Nullable<String>
    public let payUrl: Nullable<String>
    public let seller: InvoicesViewSalesResponseSeller
    public let buyer: InvoicesViewSalesResponseBuyer
    public let lines: [InvoicesViewSalesResponseLinesItem]
    public let token: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        type: InvoicesViewSalesResponseType,
        status: InvoicesViewSalesResponseStatus,
        paymentStatus: InvoicesViewSalesResponsePaymentStatus,
        number: Nullable<String>,
        issueDate: Nullable<CalendarDate>,
        dueDate: Nullable<CalendarDate>,
        currency: String,
        netTotal: String,
        vatTotal: String,
        salesTaxPercent: Nullable<String>,
        salesTaxTotal: String,
        grossTotal: String,
        paidAmount: String,
        paidOn: Nullable<String>,
        notes: Nullable<String>,
        payUrl: Nullable<String>,
        seller: InvoicesViewSalesResponseSeller,
        buyer: InvoicesViewSalesResponseBuyer,
        lines: [InvoicesViewSalesResponseLinesItem],
        token: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.type = type
        self.status = status
        self.paymentStatus = paymentStatus
        self.number = number
        self.issueDate = issueDate
        self.dueDate = dueDate
        self.currency = currency
        self.netTotal = netTotal
        self.vatTotal = vatTotal
        self.salesTaxPercent = salesTaxPercent
        self.salesTaxTotal = salesTaxTotal
        self.grossTotal = grossTotal
        self.paidAmount = paidAmount
        self.paidOn = paidOn
        self.notes = notes
        self.payUrl = payUrl
        self.seller = seller
        self.buyer = buyer
        self.lines = lines
        self.token = token
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.type = try container.decode(InvoicesViewSalesResponseType.self, forKey: .type)
        self.status = try container.decode(InvoicesViewSalesResponseStatus.self, forKey: .status)
        self.paymentStatus = try container.decode(InvoicesViewSalesResponsePaymentStatus.self, forKey: .paymentStatus)
        self.number = try container.decode(Nullable<String>.self, forKey: .number)
        self.issueDate = try container.decode(Nullable<CalendarDate>.self, forKey: .issueDate)
        self.dueDate = try container.decode(Nullable<CalendarDate>.self, forKey: .dueDate)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.netTotal = try container.decode(String.self, forKey: .netTotal)
        self.vatTotal = try container.decode(String.self, forKey: .vatTotal)
        self.salesTaxPercent = try container.decode(Nullable<String>.self, forKey: .salesTaxPercent)
        self.salesTaxTotal = try container.decode(String.self, forKey: .salesTaxTotal)
        self.grossTotal = try container.decode(String.self, forKey: .grossTotal)
        self.paidAmount = try container.decode(String.self, forKey: .paidAmount)
        self.paidOn = try container.decode(Nullable<String>.self, forKey: .paidOn)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.payUrl = try container.decode(Nullable<String>.self, forKey: .payUrl)
        self.seller = try container.decode(InvoicesViewSalesResponseSeller.self, forKey: .seller)
        self.buyer = try container.decode(InvoicesViewSalesResponseBuyer.self, forKey: .buyer)
        self.lines = try container.decode([InvoicesViewSalesResponseLinesItem].self, forKey: .lines)
        self.token = try container.decode(Nullable<String>.self, forKey: .token)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.type, forKey: .type)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.paymentStatus, forKey: .paymentStatus)
        try container.encode(self.number, forKey: .number)
        try container.encode(self.issueDate, forKey: .issueDate)
        try container.encode(self.dueDate, forKey: .dueDate)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.netTotal, forKey: .netTotal)
        try container.encode(self.vatTotal, forKey: .vatTotal)
        try container.encode(self.salesTaxPercent, forKey: .salesTaxPercent)
        try container.encode(self.salesTaxTotal, forKey: .salesTaxTotal)
        try container.encode(self.grossTotal, forKey: .grossTotal)
        try container.encode(self.paidAmount, forKey: .paidAmount)
        try container.encode(self.paidOn, forKey: .paidOn)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.payUrl, forKey: .payUrl)
        try container.encode(self.seller, forKey: .seller)
        try container.encode(self.buyer, forKey: .buyer)
        try container.encode(self.lines, forKey: .lines)
        try container.encode(self.token, forKey: .token)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case status
        case paymentStatus
        case number
        case issueDate
        case dueDate
        case currency
        case netTotal
        case vatTotal
        case salesTaxPercent
        case salesTaxTotal
        case grossTotal
        case paidAmount
        case paidOn
        case notes
        case payUrl
        case seller
        case buyer
        case lines
        case token
    }
}