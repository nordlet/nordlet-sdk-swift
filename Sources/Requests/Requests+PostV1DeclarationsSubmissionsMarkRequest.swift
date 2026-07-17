import Foundation

extension Requests {
    public struct PostV1DeclarationsSubmissionsMarkRequest: Codable, Hashable, Sendable {
        public let id: String
        public let status: PostV1DeclarationsSubmissionsMarkRequestStatus
        public let externalRef: String?
        public let message: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            status: PostV1DeclarationsSubmissionsMarkRequestStatus,
            externalRef: String? = nil,
            message: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.status = status
            self.externalRef = externalRef
            self.message = message
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.status = try container.decode(PostV1DeclarationsSubmissionsMarkRequestStatus.self, forKey: .status)
            self.externalRef = try container.decodeIfPresent(String.self, forKey: .externalRef)
            self.message = try container.decodeIfPresent(String.self, forKey: .message)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encode(self.status, forKey: .status)
            try container.encodeIfPresent(self.externalRef, forKey: .externalRef)
            try container.encodeIfPresent(self.message, forKey: .message)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case status
            case externalRef
            case message
        }
    }
}