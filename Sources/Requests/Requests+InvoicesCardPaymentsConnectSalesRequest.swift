import Foundation

extension Requests {
    public struct InvoicesCardPaymentsConnectSalesRequest: Codable, Hashable, Sendable {
        public let returnUrl: String
        public let refreshUrl: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            returnUrl: String,
            refreshUrl: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.returnUrl = returnUrl
            self.refreshUrl = refreshUrl
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.returnUrl = try container.decode(String.self, forKey: .returnUrl)
            self.refreshUrl = try container.decode(String.self, forKey: .refreshUrl)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.returnUrl, forKey: .returnUrl)
            try container.encode(self.refreshUrl, forKey: .refreshUrl)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case returnUrl
            case refreshUrl
        }
    }
}