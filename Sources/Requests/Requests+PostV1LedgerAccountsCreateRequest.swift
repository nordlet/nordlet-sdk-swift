import Foundation

extension Requests {
    public struct PostV1LedgerAccountsCreateRequest: Codable, Hashable, Sendable {
        public let code: String
        public let name: String
        public let type: PostV1LedgerAccountsCreateRequestType
        public let parentId: String?
        public let isPostable: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            code: String,
            name: String,
            type: PostV1LedgerAccountsCreateRequestType,
            parentId: String? = nil,
            isPostable: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.code = code
            self.name = name
            self.type = type
            self.parentId = parentId
            self.isPostable = isPostable
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.code = try container.decode(String.self, forKey: .code)
            self.name = try container.decode(String.self, forKey: .name)
            self.type = try container.decode(PostV1LedgerAccountsCreateRequestType.self, forKey: .type)
            self.parentId = try container.decodeIfPresent(String.self, forKey: .parentId)
            self.isPostable = try container.decodeIfPresent(Bool.self, forKey: .isPostable)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.code, forKey: .code)
            try container.encode(self.name, forKey: .name)
            try container.encode(self.type, forKey: .type)
            try container.encodeIfPresent(self.parentId, forKey: .parentId)
            try container.encodeIfPresent(self.isPostable, forKey: .isPostable)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case code
            case name
            case type
            case parentId
            case isPostable
        }
    }
}