import Foundation

extension Requests {
    public struct PostV1SalesInvoicesCreateRequest: Codable, Hashable, Sendable {
        public let partnerId: String
        public let type: PostV1SalesInvoicesCreateRequestType?
        public let currency: String?
        public let issueDate: String?
        public let dueDate: String?
        public let creditedInvoiceId: String?
        public let vatScheme: PostV1SalesInvoicesCreateRequestVatScheme?
        public let vatCountryCode: String?
        public let deemedSupplier: Bool?
        public let notes: String?
        public let lines: [PostV1SalesInvoicesCreateRequestLinesItem]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            partnerId: String,
            type: PostV1SalesInvoicesCreateRequestType? = nil,
            currency: String? = nil,
            issueDate: String? = nil,
            dueDate: String? = nil,
            creditedInvoiceId: String? = nil,
            vatScheme: PostV1SalesInvoicesCreateRequestVatScheme? = nil,
            vatCountryCode: String? = nil,
            deemedSupplier: Bool? = nil,
            notes: String? = nil,
            lines: [PostV1SalesInvoicesCreateRequestLinesItem],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.partnerId = partnerId
            self.type = type
            self.currency = currency
            self.issueDate = issueDate
            self.dueDate = dueDate
            self.creditedInvoiceId = creditedInvoiceId
            self.vatScheme = vatScheme
            self.vatCountryCode = vatCountryCode
            self.deemedSupplier = deemedSupplier
            self.notes = notes
            self.lines = lines
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.partnerId = try container.decode(String.self, forKey: .partnerId)
            self.type = try container.decodeIfPresent(PostV1SalesInvoicesCreateRequestType.self, forKey: .type)
            self.currency = try container.decodeIfPresent(String.self, forKey: .currency)
            self.issueDate = try container.decodeIfPresent(String.self, forKey: .issueDate)
            self.dueDate = try container.decodeIfPresent(String.self, forKey: .dueDate)
            self.creditedInvoiceId = try container.decodeIfPresent(String.self, forKey: .creditedInvoiceId)
            self.vatScheme = try container.decodeIfPresent(PostV1SalesInvoicesCreateRequestVatScheme.self, forKey: .vatScheme)
            self.vatCountryCode = try container.decodeIfPresent(String.self, forKey: .vatCountryCode)
            self.deemedSupplier = try container.decodeIfPresent(Bool.self, forKey: .deemedSupplier)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.lines = try container.decode([PostV1SalesInvoicesCreateRequestLinesItem].self, forKey: .lines)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.partnerId, forKey: .partnerId)
            try container.encodeIfPresent(self.type, forKey: .type)
            try container.encodeIfPresent(self.currency, forKey: .currency)
            try container.encodeIfPresent(self.issueDate, forKey: .issueDate)
            try container.encodeIfPresent(self.dueDate, forKey: .dueDate)
            try container.encodeIfPresent(self.creditedInvoiceId, forKey: .creditedInvoiceId)
            try container.encodeIfPresent(self.vatScheme, forKey: .vatScheme)
            try container.encodeIfPresent(self.vatCountryCode, forKey: .vatCountryCode)
            try container.encodeIfPresent(self.deemedSupplier, forKey: .deemedSupplier)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encode(self.lines, forKey: .lines)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case partnerId
            case type
            case currency
            case issueDate
            case dueDate
            case creditedInvoiceId
            case vatScheme
            case vatCountryCode
            case deemedSupplier
            case notes
            case lines
        }
    }
}