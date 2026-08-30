import Foundation

public struct PostV1AccountExportResponseSessionsItem: Codable, Hashable, Sendable {
    public let id: String
    public let companyId: Nullable<String>
    public let createdAt: String
    public let expiresAt: String
    public let current: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        companyId: Nullable<String>,
        createdAt: String,
        expiresAt: String,
        current: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.companyId = companyId
        self.createdAt = createdAt
        self.expiresAt = expiresAt
        self.current = current
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.companyId = try container.decode(Nullable<String>.self, forKey: .companyId)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.expiresAt = try container.decode(String.self, forKey: .expiresAt)
        self.current = try container.decode(Bool.self, forKey: .current)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.companyId, forKey: .companyId)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.expiresAt, forKey: .expiresAt)
        try container.encode(self.current, forKey: .current)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case companyId
        case createdAt
        case expiresAt
        case current
    }
}