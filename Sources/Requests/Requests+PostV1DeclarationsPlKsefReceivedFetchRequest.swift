import Foundation

extension Requests {
    public struct PostV1DeclarationsPlKsefReceivedFetchRequest: Codable, Hashable, Sendable {
        public let ksefNumber: String
        public let purchaseInvoiceId: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            ksefNumber: String,
            purchaseInvoiceId: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.ksefNumber = ksefNumber
            self.purchaseInvoiceId = purchaseInvoiceId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.ksefNumber = try container.decode(String.self, forKey: .ksefNumber)
            self.purchaseInvoiceId = try container.decodeIfPresent(String.self, forKey: .purchaseInvoiceId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.ksefNumber, forKey: .ksefNumber)
            try container.encodeIfPresent(self.purchaseInvoiceId, forKey: .purchaseInvoiceId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case ksefNumber
            case purchaseInvoiceId
        }
    }
}