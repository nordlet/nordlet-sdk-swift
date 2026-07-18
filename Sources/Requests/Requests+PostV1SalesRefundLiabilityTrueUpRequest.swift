import Foundation

extension Requests {
    public struct PostV1SalesRefundLiabilityTrueUpRequest: Codable, Hashable, Sendable {
        public let invoiceId: String
        public let estimatedTotal: String
        public let date: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            invoiceId: String,
            estimatedTotal: String,
            date: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.invoiceId = invoiceId
            self.estimatedTotal = estimatedTotal
            self.date = date
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.invoiceId = try container.decode(String.self, forKey: .invoiceId)
            self.estimatedTotal = try container.decode(String.self, forKey: .estimatedTotal)
            self.date = try container.decodeIfPresent(String.self, forKey: .date)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.invoiceId, forKey: .invoiceId)
            try container.encode(self.estimatedTotal, forKey: .estimatedTotal)
            try container.encodeIfPresent(self.date, forKey: .date)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case invoiceId
            case estimatedTotal
            case date
        }
    }
}