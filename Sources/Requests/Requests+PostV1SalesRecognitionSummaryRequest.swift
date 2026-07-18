import Foundation

extension Requests {
    public struct PostV1SalesRecognitionSummaryRequest: Codable, Hashable, Sendable {
        public let invoiceId: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            invoiceId: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.invoiceId = invoiceId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.invoiceId = try container.decodeIfPresent(String.self, forKey: .invoiceId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.invoiceId, forKey: .invoiceId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case invoiceId
        }
    }
}