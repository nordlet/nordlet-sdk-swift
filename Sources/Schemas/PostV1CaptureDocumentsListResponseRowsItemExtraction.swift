import Foundation

public struct PostV1CaptureDocumentsListResponseRowsItemExtraction: Codable, Hashable, Sendable {
    public let supplier: PostV1CaptureDocumentsListResponseRowsItemExtractionSupplier
    public let documentNumber: Nullable<String>
    public let documentDate: Nullable<String>
    public let dueDate: Nullable<String>
    public let currency: Nullable<String>
    public let netTotal: Nullable<String>
    public let vatTotal: Nullable<String>
    public let grossTotal: Nullable<String>
    public let notes: Nullable<String>
    public let lines: [PostV1CaptureDocumentsListResponseRowsItemExtractionLinesItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        supplier: PostV1CaptureDocumentsListResponseRowsItemExtractionSupplier,
        documentNumber: Nullable<String>,
        documentDate: Nullable<String>,
        dueDate: Nullable<String>,
        currency: Nullable<String>,
        netTotal: Nullable<String>,
        vatTotal: Nullable<String>,
        grossTotal: Nullable<String>,
        notes: Nullable<String>,
        lines: [PostV1CaptureDocumentsListResponseRowsItemExtractionLinesItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
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
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.supplier = try container.decode(PostV1CaptureDocumentsListResponseRowsItemExtractionSupplier.self, forKey: .supplier)
        self.documentNumber = try container.decode(Nullable<String>.self, forKey: .documentNumber)
        self.documentDate = try container.decode(Nullable<String>.self, forKey: .documentDate)
        self.dueDate = try container.decode(Nullable<String>.self, forKey: .dueDate)
        self.currency = try container.decode(Nullable<String>.self, forKey: .currency)
        self.netTotal = try container.decode(Nullable<String>.self, forKey: .netTotal)
        self.vatTotal = try container.decode(Nullable<String>.self, forKey: .vatTotal)
        self.grossTotal = try container.decode(Nullable<String>.self, forKey: .grossTotal)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.lines = try container.decode([PostV1CaptureDocumentsListResponseRowsItemExtractionLinesItem].self, forKey: .lines)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
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
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
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
    }
}