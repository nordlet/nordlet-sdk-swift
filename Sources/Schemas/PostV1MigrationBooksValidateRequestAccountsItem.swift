import Foundation

public struct PostV1MigrationBooksValidateRequestAccountsItem: Codable, Hashable, Sendable {
    public let code: String
    public let name: String
    public let type: PostV1MigrationBooksValidateRequestAccountsItemType
    public let parentCode: String?
    public let isPostable: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        code: String,
        name: String,
        type: PostV1MigrationBooksValidateRequestAccountsItemType,
        parentCode: String? = nil,
        isPostable: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.code = code
        self.name = name
        self.type = type
        self.parentCode = parentCode
        self.isPostable = isPostable
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.code = try container.decode(String.self, forKey: .code)
        self.name = try container.decode(String.self, forKey: .name)
        self.type = try container.decode(PostV1MigrationBooksValidateRequestAccountsItemType.self, forKey: .type)
        self.parentCode = try container.decodeIfPresent(String.self, forKey: .parentCode)
        self.isPostable = try container.decodeIfPresent(Bool.self, forKey: .isPostable)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.type, forKey: .type)
        try container.encodeIfPresent(self.parentCode, forKey: .parentCode)
        try container.encodeIfPresent(self.isPostable, forKey: .isPostable)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case name
        case type
        case parentCode
        case isPostable
    }
}