import Foundation

extension Requests {
    public struct PostV1BankFeedsConnectionsCompleteRequest: Codable, Hashable, Sendable {
        public let reference: String
        public let code: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            reference: String,
            code: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.reference = reference
            self.code = code
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.reference = try container.decode(String.self, forKey: .reference)
            self.code = try container.decode(String.self, forKey: .code)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.reference, forKey: .reference)
            try container.encode(self.code, forKey: .code)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case reference
            case code
        }
    }
}