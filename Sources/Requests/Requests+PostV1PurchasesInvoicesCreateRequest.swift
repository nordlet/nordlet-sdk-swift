import Foundation

extension Requests {
    public struct PostV1PurchasesInvoicesCreateRequest: Codable, Hashable, Sendable {
        public let partnerId: String
        public let type: PostV1PurchasesInvoicesCreateRequestType?
        public let documentNumber: String
        public let documentDate: String
        public let dueDate: String?
        public let currency: String?
        public let creditedInvoiceId: String?
        public let notes: String?
        public let lines: [PostV1PurchasesInvoicesCreateRequestLinesItem]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            partnerId: String,
            type: PostV1PurchasesInvoicesCreateRequestType? = nil,
            documentNumber: String,
            documentDate: String,
            dueDate: String? = nil,
            currency: String? = nil,
            creditedInvoiceId: String? = nil,
            notes: String? = nil,
            lines: [PostV1PurchasesInvoicesCreateRequestLinesItem],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.partnerId = partnerId
            self.type = type
            self.documentNumber = documentNumber
            self.documentDate = documentDate
            self.dueDate = dueDate
            self.currency = currency
            self.creditedInvoiceId = creditedInvoiceId
            self.notes = notes
            self.lines = lines
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.partnerId = try container.decode(String.self, forKey: .partnerId)
            self.type = try container.decodeIfPresent(PostV1PurchasesInvoicesCreateRequestType.self, forKey: .type)
            self.documentNumber = try container.decode(String.self, forKey: .documentNumber)
            self.documentDate = try container.decode(String.self, forKey: .documentDate)
            self.dueDate = try container.decodeIfPresent(String.self, forKey: .dueDate)
            self.currency = try container.decodeIfPresent(String.self, forKey: .currency)
            self.creditedInvoiceId = try container.decodeIfPresent(String.self, forKey: .creditedInvoiceId)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.lines = try container.decode([PostV1PurchasesInvoicesCreateRequestLinesItem].self, forKey: .lines)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.partnerId, forKey: .partnerId)
            try container.encodeIfPresent(self.type, forKey: .type)
            try container.encode(self.documentNumber, forKey: .documentNumber)
            try container.encode(self.documentDate, forKey: .documentDate)
            try container.encodeIfPresent(self.dueDate, forKey: .dueDate)
            try container.encodeIfPresent(self.currency, forKey: .currency)
            try container.encodeIfPresent(self.creditedInvoiceId, forKey: .creditedInvoiceId)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encode(self.lines, forKey: .lines)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case partnerId
            case type
            case documentNumber
            case documentDate
            case dueDate
            case currency
            case creditedInvoiceId
            case notes
            case lines
        }
    }
}