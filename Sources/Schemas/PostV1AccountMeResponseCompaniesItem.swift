import Foundation

public struct PostV1AccountMeResponseCompaniesItem: Codable, Hashable, Sendable {
    public let id: String
    public let name: String
    public let code: Nullable<String>
    public let vatCode: Nullable<String>
    public let role: String
    public let isSandbox: Bool
    public let status: PostV1AccountMeResponseCompaniesItemStatus
    public let deletedAt: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        name: String,
        code: Nullable<String>,
        vatCode: Nullable<String>,
        role: String,
        isSandbox: Bool,
        status: PostV1AccountMeResponseCompaniesItemStatus,
        deletedAt: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.name = name
        self.code = code
        self.vatCode = vatCode
        self.role = role
        self.isSandbox = isSandbox
        self.status = status
        self.deletedAt = deletedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.code = try container.decode(Nullable<String>.self, forKey: .code)
        self.vatCode = try container.decode(Nullable<String>.self, forKey: .vatCode)
        self.role = try container.decode(String.self, forKey: .role)
        self.isSandbox = try container.decode(Bool.self, forKey: .isSandbox)
        self.status = try container.decode(PostV1AccountMeResponseCompaniesItemStatus.self, forKey: .status)
        self.deletedAt = try container.decode(Nullable<String>.self, forKey: .deletedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.vatCode, forKey: .vatCode)
        try container.encode(self.role, forKey: .role)
        try container.encode(self.isSandbox, forKey: .isSandbox)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.deletedAt, forKey: .deletedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case code
        case vatCode
        case role
        case isSandbox
        case status
        case deletedAt
    }
}