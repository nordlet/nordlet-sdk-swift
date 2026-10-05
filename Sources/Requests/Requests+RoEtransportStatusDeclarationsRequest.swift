import Foundation

extension Requests {
    public struct RoEtransportStatusDeclarationsRequest: Codable, Hashable, Sendable {
        public let reference: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            reference: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.reference = reference
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.reference = try container.decode(String.self, forKey: .reference)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.reference, forKey: .reference)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case reference
        }
    }
}