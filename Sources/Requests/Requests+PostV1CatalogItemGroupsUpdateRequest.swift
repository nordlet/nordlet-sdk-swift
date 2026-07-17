import Foundation

extension Requests {
    public struct PostV1CatalogItemGroupsUpdateRequest: Codable, Hashable, Sendable {
        public let id: String
        public let code: String?
        public let name: String?
        public let parentId: Nullable<String>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            code: String? = nil,
            name: String? = nil,
            parentId: Nullable<String>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.code = code
            self.name = name
            self.parentId = parentId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.code = try container.decodeIfPresent(String.self, forKey: .code)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.parentId = try container.decodeNullableIfPresent(String.self, forKey: .parentId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.code, forKey: .code)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeNullableIfPresent(self.parentId, forKey: .parentId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case code
            case name
            case parentId
        }
    }
}