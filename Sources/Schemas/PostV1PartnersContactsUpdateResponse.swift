import Foundation

public struct PostV1PartnersContactsUpdateResponse: Codable, Hashable, Sendable {
    public let id: String
    public let partnerId: String
    public let name: String
    public let role: Nullable<String>
    public let email: Nullable<String>
    public let phone: Nullable<String>
    public let notes: Nullable<String>
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        partnerId: String,
        name: String,
        role: Nullable<String>,
        email: Nullable<String>,
        phone: Nullable<String>,
        notes: Nullable<String>,
        createdAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.partnerId = partnerId
        self.name = name
        self.role = role
        self.email = email
        self.phone = phone
        self.notes = notes
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.partnerId = try container.decode(String.self, forKey: .partnerId)
        self.name = try container.decode(String.self, forKey: .name)
        self.role = try container.decode(Nullable<String>.self, forKey: .role)
        self.email = try container.decode(Nullable<String>.self, forKey: .email)
        self.phone = try container.decode(Nullable<String>.self, forKey: .phone)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.partnerId, forKey: .partnerId)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.role, forKey: .role)
        try container.encode(self.email, forKey: .email)
        try container.encode(self.phone, forKey: .phone)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case partnerId
        case name
        case role
        case email
        case phone
        case notes
        case createdAt
    }
}