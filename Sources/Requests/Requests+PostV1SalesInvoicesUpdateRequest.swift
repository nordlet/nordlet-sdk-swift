import Foundation

extension Requests {
    public struct PostV1SalesInvoicesUpdateRequest: Codable, Hashable, Sendable {
        public let id: String
        public let partnerId: String?
        public let currency: String?
        public let issueDate: String?
        public let dueDate: String?
        public let vatScheme: Nullable<PostV1SalesInvoicesUpdateRequestVatScheme>?
        public let vatCountryCode: Nullable<String>?
        public let deemedSupplier: Bool?
        public let notes: String?
        public let lines: [PostV1SalesInvoicesUpdateRequestLinesItem]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            partnerId: String? = nil,
            currency: String? = nil,
            issueDate: String? = nil,
            dueDate: String? = nil,
            vatScheme: Nullable<PostV1SalesInvoicesUpdateRequestVatScheme>? = nil,
            vatCountryCode: Nullable<String>? = nil,
            deemedSupplier: Bool? = nil,
            notes: String? = nil,
            lines: [PostV1SalesInvoicesUpdateRequestLinesItem]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.partnerId = partnerId
            self.currency = currency
            self.issueDate = issueDate
            self.dueDate = dueDate
            self.vatScheme = vatScheme
            self.vatCountryCode = vatCountryCode
            self.deemedSupplier = deemedSupplier
            self.notes = notes
            self.lines = lines
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.partnerId = try container.decodeIfPresent(String.self, forKey: .partnerId)
            self.currency = try container.decodeIfPresent(String.self, forKey: .currency)
            self.issueDate = try container.decodeIfPresent(String.self, forKey: .issueDate)
            self.dueDate = try container.decodeIfPresent(String.self, forKey: .dueDate)
            self.vatScheme = try container.decodeNullableIfPresent(PostV1SalesInvoicesUpdateRequestVatScheme.self, forKey: .vatScheme)
            self.vatCountryCode = try container.decodeNullableIfPresent(String.self, forKey: .vatCountryCode)
            self.deemedSupplier = try container.decodeIfPresent(Bool.self, forKey: .deemedSupplier)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.lines = try container.decodeIfPresent([PostV1SalesInvoicesUpdateRequestLinesItem].self, forKey: .lines)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.partnerId, forKey: .partnerId)
            try container.encodeIfPresent(self.currency, forKey: .currency)
            try container.encodeIfPresent(self.issueDate, forKey: .issueDate)
            try container.encodeIfPresent(self.dueDate, forKey: .dueDate)
            try container.encodeNullableIfPresent(self.vatScheme, forKey: .vatScheme)
            try container.encodeNullableIfPresent(self.vatCountryCode, forKey: .vatCountryCode)
            try container.encodeIfPresent(self.deemedSupplier, forKey: .deemedSupplier)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encodeIfPresent(self.lines, forKey: .lines)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case partnerId
            case currency
            case issueDate
            case dueDate
            case vatScheme
            case vatCountryCode
            case deemedSupplier
            case notes
            case lines
        }
    }
}