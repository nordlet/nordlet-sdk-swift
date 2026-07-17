import Foundation

extension Requests {
    public struct PostV1SalesActsCreateRequest: Codable, Hashable, Sendable {
        public let partnerId: String
        public let type: PostV1SalesActsCreateRequestType?
        public let documentDate: String?
        public let saleInvoiceId: String?
        public let transferredByName: String?
        public let transferredByTitle: String?
        public let acceptedByName: String?
        public let acceptedByTitle: String?
        public let notes: String?
        public let series: String?
        public let lines: [PostV1SalesActsCreateRequestLinesItem]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            partnerId: String,
            type: PostV1SalesActsCreateRequestType? = nil,
            documentDate: String? = nil,
            saleInvoiceId: String? = nil,
            transferredByName: String? = nil,
            transferredByTitle: String? = nil,
            acceptedByName: String? = nil,
            acceptedByTitle: String? = nil,
            notes: String? = nil,
            series: String? = nil,
            lines: [PostV1SalesActsCreateRequestLinesItem]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.partnerId = partnerId
            self.type = type
            self.documentDate = documentDate
            self.saleInvoiceId = saleInvoiceId
            self.transferredByName = transferredByName
            self.transferredByTitle = transferredByTitle
            self.acceptedByName = acceptedByName
            self.acceptedByTitle = acceptedByTitle
            self.notes = notes
            self.series = series
            self.lines = lines
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.partnerId = try container.decode(String.self, forKey: .partnerId)
            self.type = try container.decodeIfPresent(PostV1SalesActsCreateRequestType.self, forKey: .type)
            self.documentDate = try container.decodeIfPresent(String.self, forKey: .documentDate)
            self.saleInvoiceId = try container.decodeIfPresent(String.self, forKey: .saleInvoiceId)
            self.transferredByName = try container.decodeIfPresent(String.self, forKey: .transferredByName)
            self.transferredByTitle = try container.decodeIfPresent(String.self, forKey: .transferredByTitle)
            self.acceptedByName = try container.decodeIfPresent(String.self, forKey: .acceptedByName)
            self.acceptedByTitle = try container.decodeIfPresent(String.self, forKey: .acceptedByTitle)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.series = try container.decodeIfPresent(String.self, forKey: .series)
            self.lines = try container.decodeIfPresent([PostV1SalesActsCreateRequestLinesItem].self, forKey: .lines)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.partnerId, forKey: .partnerId)
            try container.encodeIfPresent(self.type, forKey: .type)
            try container.encodeIfPresent(self.documentDate, forKey: .documentDate)
            try container.encodeIfPresent(self.saleInvoiceId, forKey: .saleInvoiceId)
            try container.encodeIfPresent(self.transferredByName, forKey: .transferredByName)
            try container.encodeIfPresent(self.transferredByTitle, forKey: .transferredByTitle)
            try container.encodeIfPresent(self.acceptedByName, forKey: .acceptedByName)
            try container.encodeIfPresent(self.acceptedByTitle, forKey: .acceptedByTitle)
            try container.encodeIfPresent(self.notes, forKey: .notes)
            try container.encodeIfPresent(self.series, forKey: .series)
            try container.encodeIfPresent(self.lines, forKey: .lines)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case partnerId
            case type
            case documentDate
            case saleInvoiceId
            case transferredByName
            case transferredByTitle
            case acceptedByName
            case acceptedByTitle
            case notes
            case series
            case lines
        }
    }
}