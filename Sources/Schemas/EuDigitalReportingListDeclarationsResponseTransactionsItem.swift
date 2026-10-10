import Foundation

public struct EuDigitalReportingListDeclarationsResponseTransactionsItem: Codable, Hashable, Sendable {
    public let direction: EuDigitalReportingListDeclarationsResponseTransactionsItemDirection
    public let article: EuDigitalReportingListDeclarationsResponseTransactionsItemArticle
    public let documentId: String
    public let documentType: EuDigitalReportingListDeclarationsResponseTransactionsItemDocumentType
    public let number: Nullable<String>
    public let issueDate: CalendarDate
    public let partnerName: String
    public let supplierVatNumber: Nullable<String>
    public let customerVatNumber: Nullable<String>
    public let currency: String
    public let lines: [EuDigitalReportingListDeclarationsResponseTransactionsItemLinesItem]
    public let taxableAmount: String
    public let vatAmount: Nullable<String>
    public let exemptionReference: Nullable<String>
    public let reverseCharge: Bool
    public let correctedInvoiceNumber: Nullable<String>
    public let supplierAccounts: [String]
    public let reportTo: String
    public let deadline: String
    public let missing: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        direction: EuDigitalReportingListDeclarationsResponseTransactionsItemDirection,
        article: EuDigitalReportingListDeclarationsResponseTransactionsItemArticle,
        documentId: String,
        documentType: EuDigitalReportingListDeclarationsResponseTransactionsItemDocumentType,
        number: Nullable<String>,
        issueDate: CalendarDate,
        partnerName: String,
        supplierVatNumber: Nullable<String>,
        customerVatNumber: Nullable<String>,
        currency: String,
        lines: [EuDigitalReportingListDeclarationsResponseTransactionsItemLinesItem],
        taxableAmount: String,
        vatAmount: Nullable<String>,
        exemptionReference: Nullable<String>,
        reverseCharge: Bool,
        correctedInvoiceNumber: Nullable<String>,
        supplierAccounts: [String],
        reportTo: String,
        deadline: String,
        missing: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.direction = direction
        self.article = article
        self.documentId = documentId
        self.documentType = documentType
        self.number = number
        self.issueDate = issueDate
        self.partnerName = partnerName
        self.supplierVatNumber = supplierVatNumber
        self.customerVatNumber = customerVatNumber
        self.currency = currency
        self.lines = lines
        self.taxableAmount = taxableAmount
        self.vatAmount = vatAmount
        self.exemptionReference = exemptionReference
        self.reverseCharge = reverseCharge
        self.correctedInvoiceNumber = correctedInvoiceNumber
        self.supplierAccounts = supplierAccounts
        self.reportTo = reportTo
        self.deadline = deadline
        self.missing = missing
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.direction = try container.decode(EuDigitalReportingListDeclarationsResponseTransactionsItemDirection.self, forKey: .direction)
        self.article = try container.decode(EuDigitalReportingListDeclarationsResponseTransactionsItemArticle.self, forKey: .article)
        self.documentId = try container.decode(String.self, forKey: .documentId)
        self.documentType = try container.decode(EuDigitalReportingListDeclarationsResponseTransactionsItemDocumentType.self, forKey: .documentType)
        self.number = try container.decode(Nullable<String>.self, forKey: .number)
        self.issueDate = try container.decode(CalendarDate.self, forKey: .issueDate)
        self.partnerName = try container.decode(String.self, forKey: .partnerName)
        self.supplierVatNumber = try container.decode(Nullable<String>.self, forKey: .supplierVatNumber)
        self.customerVatNumber = try container.decode(Nullable<String>.self, forKey: .customerVatNumber)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.lines = try container.decode([EuDigitalReportingListDeclarationsResponseTransactionsItemLinesItem].self, forKey: .lines)
        self.taxableAmount = try container.decode(String.self, forKey: .taxableAmount)
        self.vatAmount = try container.decode(Nullable<String>.self, forKey: .vatAmount)
        self.exemptionReference = try container.decode(Nullable<String>.self, forKey: .exemptionReference)
        self.reverseCharge = try container.decode(Bool.self, forKey: .reverseCharge)
        self.correctedInvoiceNumber = try container.decode(Nullable<String>.self, forKey: .correctedInvoiceNumber)
        self.supplierAccounts = try container.decode([String].self, forKey: .supplierAccounts)
        self.reportTo = try container.decode(String.self, forKey: .reportTo)
        self.deadline = try container.decode(String.self, forKey: .deadline)
        self.missing = try container.decode([String].self, forKey: .missing)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.direction, forKey: .direction)
        try container.encode(self.article, forKey: .article)
        try container.encode(self.documentId, forKey: .documentId)
        try container.encode(self.documentType, forKey: .documentType)
        try container.encode(self.number, forKey: .number)
        try container.encode(self.issueDate, forKey: .issueDate)
        try container.encode(self.partnerName, forKey: .partnerName)
        try container.encode(self.supplierVatNumber, forKey: .supplierVatNumber)
        try container.encode(self.customerVatNumber, forKey: .customerVatNumber)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.lines, forKey: .lines)
        try container.encode(self.taxableAmount, forKey: .taxableAmount)
        try container.encode(self.vatAmount, forKey: .vatAmount)
        try container.encode(self.exemptionReference, forKey: .exemptionReference)
        try container.encode(self.reverseCharge, forKey: .reverseCharge)
        try container.encode(self.correctedInvoiceNumber, forKey: .correctedInvoiceNumber)
        try container.encode(self.supplierAccounts, forKey: .supplierAccounts)
        try container.encode(self.reportTo, forKey: .reportTo)
        try container.encode(self.deadline, forKey: .deadline)
        try container.encode(self.missing, forKey: .missing)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case direction
        case article
        case documentId
        case documentType
        case number
        case issueDate
        case partnerName
        case supplierVatNumber
        case customerVatNumber
        case currency
        case lines
        case taxableAmount
        case vatAmount
        case exemptionReference
        case reverseCharge
        case correctedInvoiceNumber
        case supplierAccounts
        case reportTo
        case deadline
        case missing
    }
}