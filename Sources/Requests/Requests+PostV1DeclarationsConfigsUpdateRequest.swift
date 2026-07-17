import Foundation

extension Requests {
    public struct PostV1DeclarationsConfigsUpdateRequest: Codable, Hashable, Sendable {
        public let system: String
        public let config: [String: String]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            system: String,
            config: [String: String],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.system = system
            self.config = config
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.system = try container.decode(String.self, forKey: .system)
            self.config = try container.decode([String: String].self, forKey: .config)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.system, forKey: .system)
            try container.encode(self.config, forKey: .config)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case system
            case config
        }
    }
}