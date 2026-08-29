import Foundation

public struct PostV1ProductionRoutingsCreateResponse: Codable, Hashable, Sendable {
    public let id: String
    public let code: String
    public let name: String
    public let isActive: Bool
    public let notes: Nullable<String>
    public let createdAt: String
    public let operations: [PostV1ProductionRoutingsCreateResponseOperationsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        code: String,
        name: String,
        isActive: Bool,
        notes: Nullable<String>,
        createdAt: String,
        operations: [PostV1ProductionRoutingsCreateResponseOperationsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.code = code
        self.name = name
        self.isActive = isActive
        self.notes = notes
        self.createdAt = createdAt
        self.operations = operations
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.code = try container.decode(String.self, forKey: .code)
        self.name = try container.decode(String.self, forKey: .name)
        self.isActive = try container.decode(Bool.self, forKey: .isActive)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.operations = try container.decode([PostV1ProductionRoutingsCreateResponseOperationsItem].self, forKey: .operations)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.isActive, forKey: .isActive)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.operations, forKey: .operations)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case code
        case name
        case isActive
        case notes
        case createdAt
        case operations
    }
}