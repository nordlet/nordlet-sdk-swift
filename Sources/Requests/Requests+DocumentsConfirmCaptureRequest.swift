import Foundation

extension Requests {
    public struct DocumentsConfirmCaptureRequest: Codable, Hashable, Sendable {
        public let id: String
        public let partnerId: String?
        public let newSupplier: DocumentsConfirmCaptureRequestNewSupplier?
        public let documentNumber: String
        public let documentDate: CalendarDate
        public let dueDate: CalendarDate?
        public let currency: String?
        public let notes: String?
        public let lines: [DocumentsConfirmCaptureRequestLinesItem]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            partnerId: String? = nil,
            newSupplier: DocumentsConfirmCaptureRequestNewSupplier? = nil,
            documentNumber: String,
            documentDate: CalendarDate,
            dueDate: CalendarDate? = nil,
            currency: String? = nil,
            notes: String? = nil,
            lines: [DocumentsConfirmCaptureRequestLinesItem],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.partnerId = partnerId
            self.newSupplier = newSupplier
            self.documentNumber = documentNumber
            self.documentDate = documentDate
            self.dueDate = dueDate
            self.currency = currency
            self.notes = notes
            self.lines = lines
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.partnerId = try container.decodeIfPresent(String.self, forKey: .partnerId)
            self.newSupplier = try container.decodeIfPresent(DocumentsConfirmCaptureRequestNewSupplier.self, forKey: .newSupplier)
            self.documentNumber = try container.decode(String.self, forKey: .documentNumber)
            self.documentDate = try container.decode(CalendarDate.self, forKey: .documentDate)
            self.dueDate = try container.decodeIfPresent(CalendarDate.self, forKey: .dueDate)
            self.currency = try container.decodeIfPresent(String.self, forKey: .currency)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.lines = try container.decode([DocumentsConfirmCaptureRequestLinesItem].self, forKey: .lines)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.partnerId, forKey: .partnerId)
            try container.encodeIfPresent(self.newSupplier, forKey: .newSupplier)
            try container.encode(self.documentNumber, forKey: .documentNumber)
            try container.encode(self.documentDate, forKey: .documentDate)
            try container.encodeIfPresent(self.dueDate, forKey: .dueDate)
            try container.encodeIfPresent(self.currency, forKey: .currency)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encode(self.lines, forKey: .lines)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case partnerId
            case newSupplier
            case documentNumber
            case documentDate
            case dueDate
            case currency
            case notes
            case lines
        }
    }
}