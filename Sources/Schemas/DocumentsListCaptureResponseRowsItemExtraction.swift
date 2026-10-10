import Foundation

public struct DocumentsListCaptureResponseRowsItemExtraction: Codable, Hashable, Sendable {
    public let documentType: DocumentsListCaptureResponseRowsItemExtractionDocumentType?
    public let supplier: DocumentsListCaptureResponseRowsItemExtractionSupplier
    public let documentNumber: Nullable<String>
    public let documentDate: Nullable<CalendarDate>
    public let dueDate: Nullable<CalendarDate>
    public let currency: Nullable<String>
    public let netTotal: Nullable<String>
    public let vatTotal: Nullable<String>
    public let grossTotal: Nullable<String>
    public let notes: Nullable<String>
    public let lines: [DocumentsListCaptureResponseRowsItemExtractionLinesItem]
    public let oppositeLines: [DocumentsListCaptureResponseRowsItemExtractionOppositeLinesItem]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        documentType: DocumentsListCaptureResponseRowsItemExtractionDocumentType? = nil,
        supplier: DocumentsListCaptureResponseRowsItemExtractionSupplier,
        documentNumber: Nullable<String>,
        documentDate: Nullable<CalendarDate>,
        dueDate: Nullable<CalendarDate>,
        currency: Nullable<String>,
        netTotal: Nullable<String>,
        vatTotal: Nullable<String>,
        grossTotal: Nullable<String>,
        notes: Nullable<String>,
        lines: [DocumentsListCaptureResponseRowsItemExtractionLinesItem],
        oppositeLines: [DocumentsListCaptureResponseRowsItemExtractionOppositeLinesItem]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.documentType = documentType
        self.supplier = supplier
        self.documentNumber = documentNumber
        self.documentDate = documentDate
        self.dueDate = dueDate
        self.currency = currency
        self.netTotal = netTotal
        self.vatTotal = vatTotal
        self.grossTotal = grossTotal
        self.notes = notes
        self.lines = lines
        self.oppositeLines = oppositeLines
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.documentType = try container.decodeIfPresent(DocumentsListCaptureResponseRowsItemExtractionDocumentType.self, forKey: .documentType)
        self.supplier = try container.decode(DocumentsListCaptureResponseRowsItemExtractionSupplier.self, forKey: .supplier)
        self.documentNumber = try container.decode(Nullable<String>.self, forKey: .documentNumber)
        self.documentDate = try container.decode(Nullable<CalendarDate>.self, forKey: .documentDate)
        self.dueDate = try container.decode(Nullable<CalendarDate>.self, forKey: .dueDate)
        self.currency = try container.decode(Nullable<String>.self, forKey: .currency)
        self.netTotal = try container.decode(Nullable<String>.self, forKey: .netTotal)
        self.vatTotal = try container.decode(Nullable<String>.self, forKey: .vatTotal)
        self.grossTotal = try container.decode(Nullable<String>.self, forKey: .grossTotal)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.lines = try container.decode([DocumentsListCaptureResponseRowsItemExtractionLinesItem].self, forKey: .lines)
        self.oppositeLines = try container.decodeIfPresent([DocumentsListCaptureResponseRowsItemExtractionOppositeLinesItem].self, forKey: .oppositeLines)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.documentType, forKey: .documentType)
        try container.encode(self.supplier, forKey: .supplier)
        try container.encode(self.documentNumber, forKey: .documentNumber)
        try container.encode(self.documentDate, forKey: .documentDate)
        try container.encode(self.dueDate, forKey: .dueDate)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.netTotal, forKey: .netTotal)
        try container.encode(self.vatTotal, forKey: .vatTotal)
        try container.encode(self.grossTotal, forKey: .grossTotal)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.lines, forKey: .lines)
        try container.encodeIfPresent(self.oppositeLines, forKey: .oppositeLines)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case documentType
        case supplier
        case documentNumber
        case documentDate
        case dueDate
        case currency
        case netTotal
        case vatTotal
        case grossTotal
        case notes
        case lines
        case oppositeLines
    }
}