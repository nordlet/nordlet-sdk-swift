import Foundation

extension Requests {
    public struct PostV1PurchasesInvoicesUpdateRequest: Codable, Hashable, Sendable {
        public let id: String
        public let partnerId: String?
        public let documentNumber: String?
        public let documentDate: String?
        public let dueDate: String?
        public let currency: String?
        public let notes: String?
        public let lines: [PostV1PurchasesInvoicesUpdateRequestLinesItem]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            partnerId: String? = nil,
            documentNumber: String? = nil,
            documentDate: String? = nil,
            dueDate: String? = nil,
            currency: String? = nil,
            notes: String? = nil,
            lines: [PostV1PurchasesInvoicesUpdateRequestLinesItem]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.partnerId = partnerId
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
            self.documentNumber = try container.decodeIfPresent(String.self, forKey: .documentNumber)
            self.documentDate = try container.decodeIfPresent(String.self, forKey: .documentDate)
            self.dueDate = try container.decodeIfPresent(String.self, forKey: .dueDate)
            self.currency = try container.decodeIfPresent(String.self, forKey: .currency)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.lines = try container.decodeIfPresent([PostV1PurchasesInvoicesUpdateRequestLinesItem].self, forKey: .lines)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.partnerId, forKey: .partnerId)
            try container.encodeIfPresent(self.documentNumber, forKey: .documentNumber)
            try container.encodeIfPresent(self.documentDate, forKey: .documentDate)
            try container.encodeIfPresent(self.dueDate, forKey: .dueDate)
            try container.encodeIfPresent(self.currency, forKey: .currency)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encodeIfPresent(self.lines, forKey: .lines)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case partnerId
            case documentNumber
            case documentDate
            case dueDate
            case currency
            case notes
            case lines
        }
    }
}