import Foundation

public struct PostV1AccountMeResponseUser: Codable, Hashable, Sendable {
    public let id: String
    public let email: String
    public let name: Nullable<String>
    public let locale: String
    public let plan: String
    public let isSuperAdmin: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        email: String,
        name: Nullable<String>,
        locale: String,
        plan: String,
        isSuperAdmin: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.email = email
        self.name = name
        self.locale = locale
        self.plan = plan
        self.isSuperAdmin = isSuperAdmin
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.email = try container.decode(String.self, forKey: .email)
        self.name = try container.decode(Nullable<String>.self, forKey: .name)
        self.locale = try container.decode(String.self, forKey: .locale)
        self.plan = try container.decode(String.self, forKey: .plan)
        self.isSuperAdmin = try container.decode(Bool.self, forKey: .isSuperAdmin)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.email, forKey: .email)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.locale, forKey: .locale)
        try container.encode(self.plan, forKey: .plan)
        try container.encode(self.isSuperAdmin, forKey: .isSuperAdmin)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case email
        case name
        case locale
        case plan
        case isSuperAdmin
    }
}