import Foundation

extension Requests {
    public struct PostV1PurchasesInvoicesMatchRequest: Codable, Hashable, Sendable {
        public let invoiceId: String
        public let priceTolerancePercent: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            invoiceId: String,
            priceTolerancePercent: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.invoiceId = invoiceId
            self.priceTolerancePercent = priceTolerancePercent
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.invoiceId = try container.decode(String.self, forKey: .invoiceId)
            self.priceTolerancePercent = try container.decodeIfPresent(String.self, forKey: .priceTolerancePercent)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.invoiceId, forKey: .invoiceId)
            try container.encodeIfPresent(self.priceTolerancePercent, forKey: .priceTolerancePercent)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case invoiceId
            case priceTolerancePercent
        }
    }
}