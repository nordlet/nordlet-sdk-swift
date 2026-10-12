import Foundation

extension Requests {
    public struct AccountSetOverdraftCapBillingRequest: Codable, Hashable, Sendable {
        public let capCents: Int64
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            capCents: Int64,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.capCents = capCents
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.capCents = try container.decode(Int64.self, forKey: .capCents)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.capCents, forKey: .capCents)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case capCents
        }
    }
}