import Foundation

extension Requests {
    public struct MergePartnersRequest: Codable, Hashable, Sendable {
        public let sourceId: String
        public let targetId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            sourceId: String,
            targetId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.sourceId = sourceId
            self.targetId = targetId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.sourceId = try container.decode(String.self, forKey: .sourceId)
            self.targetId = try container.decode(String.self, forKey: .targetId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.sourceId, forKey: .sourceId)
            try container.encode(self.targetId, forKey: .targetId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case sourceId
            case targetId
        }
    }
}