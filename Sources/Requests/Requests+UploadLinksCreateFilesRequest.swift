import Foundation

extension Requests {
    public struct UploadLinksCreateFilesRequest: Codable, Hashable, Sendable {
        public let entity: String
        public let entityId: String?
        public let fileName: String
        public let mimeType: String?
        public let expiresInMinutes: Int64?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            entity: String,
            entityId: String? = nil,
            fileName: String,
            mimeType: String? = nil,
            expiresInMinutes: Int64? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.entity = entity
            self.entityId = entityId
            self.fileName = fileName
            self.mimeType = mimeType
            self.expiresInMinutes = expiresInMinutes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.entity = try container.decode(String.self, forKey: .entity)
            self.entityId = try container.decodeIfPresent(String.self, forKey: .entityId)
            self.fileName = try container.decode(String.self, forKey: .fileName)
            self.mimeType = try container.decodeIfPresent(String.self, forKey: .mimeType)
            self.expiresInMinutes = try container.decodeIfPresent(Int64.self, forKey: .expiresInMinutes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.entity, forKey: .entity)
            try container.encodeIfPresent(self.entityId, forKey: .entityId)
            try container.encode(self.fileName, forKey: .fileName)
            try container.encodeIfPresent(self.mimeType, forKey: .mimeType)
            try container.encodeIfPresent(self.expiresInMinutes, forKey: .expiresInMinutes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case entity
            case entityId
            case fileName
            case mimeType
            case expiresInMinutes
        }
    }
}