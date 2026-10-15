import Foundation

public struct AccountsCreateLedgerResponse: Codable, Hashable, Sendable {
    public let id: String
    public let code: String
    public let name: String
    /// The name in the language of the Accept-Language header
    public let displayName: String
    public let type: AccountsCreateLedgerResponseType
    public let parentId: Nullable<String>
    public let isPostable: Bool
    public let createdAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        code: String,
        name: String,
        displayName: String,
        type: AccountsCreateLedgerResponseType,
        parentId: Nullable<String>,
        isPostable: Bool,
        createdAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.code = code
        self.name = name
        self.displayName = displayName
        self.type = type
        self.parentId = parentId
        self.isPostable = isPostable
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.code = try container.decode(String.self, forKey: .code)
        self.name = try container.decode(String.self, forKey: .name)
        self.displayName = try container.decode(String.self, forKey: .displayName)
        self.type = try container.decode(AccountsCreateLedgerResponseType.self, forKey: .type)
        self.parentId = try container.decode(Nullable<String>.self, forKey: .parentId)
        self.isPostable = try container.decode(Bool.self, forKey: .isPostable)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.displayName, forKey: .displayName)
        try container.encode(self.type, forKey: .type)
        try container.encode(self.parentId, forKey: .parentId)
        try container.encode(self.isPostable, forKey: .isPostable)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case code
        case name
        case displayName
        case type
        case parentId
        case isPostable
        case createdAt
    }
}