import Foundation

extension Requests {
    public struct CertificatesDeleteDeclarationsRequest: Codable, Hashable, Sendable {
        public let system: String
        public let fieldKey: CertificatesDeleteDeclarationsRequestFieldKey
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            system: String,
            fieldKey: CertificatesDeleteDeclarationsRequestFieldKey,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.system = system
            self.fieldKey = fieldKey
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.system = try container.decode(String.self, forKey: .system)
            self.fieldKey = try container.decode(CertificatesDeleteDeclarationsRequestFieldKey.self, forKey: .fieldKey)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.system, forKey: .system)
            try container.encode(self.fieldKey, forKey: .fieldKey)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case system
            case fieldKey
        }
    }
}