import Foundation

extension Requests {
    public struct PostV1SalesInvoicesApplyAdvanceRequest: Codable, Hashable, Sendable {
        public let advanceId: String
        public let invoiceId: String
        public let date: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            advanceId: String,
            invoiceId: String,
            date: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.advanceId = advanceId
            self.invoiceId = invoiceId
            self.date = date
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.advanceId = try container.decode(String.self, forKey: .advanceId)
            self.invoiceId = try container.decode(String.self, forKey: .invoiceId)
            self.date = try container.decodeIfPresent(String.self, forKey: .date)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.advanceId, forKey: .advanceId)
            try container.encode(self.invoiceId, forKey: .invoiceId)
            try container.encodeIfPresent(self.date, forKey: .date)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case advanceId
            case invoiceId
            case date
        }
    }
}