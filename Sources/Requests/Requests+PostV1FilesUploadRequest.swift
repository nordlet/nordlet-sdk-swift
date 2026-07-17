import Foundation

extension Requests {
    public struct PostV1FilesUploadRequest: Codable, Hashable, Sendable {
        public let entity: String
        public let entityId: String
        public let fileName: String
        public let mimeType: String
        /// Base64-encoded file content
        public let content: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            entity: String,
            entityId: String,
            fileName: String,
            mimeType: String,
            content: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.entity = entity
            self.entityId = entityId
            self.fileName = fileName
            self.mimeType = mimeType
            self.content = content
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.entity = try container.decode(String.self, forKey: .entity)
            self.entityId = try container.decode(String.self, forKey: .entityId)
            self.fileName = try container.decode(String.self, forKey: .fileName)
            self.mimeType = try container.decode(String.self, forKey: .mimeType)
            self.content = try container.decode(String.self, forKey: .content)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.entity, forKey: .entity)
            try container.encode(self.entityId, forKey: .entityId)
            try container.encode(self.fileName, forKey: .fileName)
            try container.encode(self.mimeType, forKey: .mimeType)
            try container.encode(self.content, forKey: .content)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case entity
            case entityId
            case fileName
            case mimeType
            case content
        }
    }
}