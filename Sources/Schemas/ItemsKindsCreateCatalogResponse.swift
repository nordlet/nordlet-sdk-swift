import Foundation

public struct ItemsKindsCreateCatalogResponse: Codable, Hashable, Sendable {
    public let id: String
    public let code: String
    public let name: String
    public let saftType: ItemsKindsCreateCatalogResponseSaftType
    public let quantityAccounting: Bool
    public let sortOrder: Int64
    public let createdAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        code: String,
        name: String,
        saftType: ItemsKindsCreateCatalogResponseSaftType,
        quantityAccounting: Bool,
        sortOrder: Int64,
        createdAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.code = code
        self.name = name
        self.saftType = saftType
        self.quantityAccounting = quantityAccounting
        self.sortOrder = sortOrder
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.code = try container.decode(String.self, forKey: .code)
        self.name = try container.decode(String.self, forKey: .name)
        self.saftType = try container.decode(ItemsKindsCreateCatalogResponseSaftType.self, forKey: .saftType)
        self.quantityAccounting = try container.decode(Bool.self, forKey: .quantityAccounting)
        self.sortOrder = try container.decode(Int64.self, forKey: .sortOrder)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.saftType, forKey: .saftType)
        try container.encode(self.quantityAccounting, forKey: .quantityAccounting)
        try container.encode(self.sortOrder, forKey: .sortOrder)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case code
        case name
        case saftType
        case quantityAccounting
        case sortOrder
        case createdAt
    }
}