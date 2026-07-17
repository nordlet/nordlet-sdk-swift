import Foundation

public struct PostV1InventoryWarehousesCreateResponse: Codable, Hashable, Sendable {
    public let id: String
    public let code: String
    public let name: String
    public let isDefault: Bool
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        code: String,
        name: String,
        isDefault: Bool,
        createdAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.code = code
        self.name = name
        self.isDefault = isDefault
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.code = try container.decode(String.self, forKey: .code)
        self.name = try container.decode(String.self, forKey: .name)
        self.isDefault = try container.decode(Bool.self, forKey: .isDefault)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.isDefault, forKey: .isDefault)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case code
        case name
        case isDefault
        case createdAt
    }
}