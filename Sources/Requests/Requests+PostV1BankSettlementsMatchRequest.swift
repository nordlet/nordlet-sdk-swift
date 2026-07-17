import Foundation

extension Requests {
    public struct PostV1BankSettlementsMatchRequest: Codable, Hashable, Sendable {
        public let lineId: String
        public let invoiceId: Nullable<String>
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            lineId: String,
            invoiceId: Nullable<String>,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.lineId = lineId
            self.invoiceId = invoiceId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.lineId = try container.decode(String.self, forKey: .lineId)
            self.invoiceId = try container.decode(Nullable<String>.self, forKey: .invoiceId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.lineId, forKey: .lineId)
            try container.encode(self.invoiceId, forKey: .invoiceId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case lineId
            case invoiceId
        }
    }
}