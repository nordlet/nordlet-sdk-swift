import Foundation

public struct ItemsListCatalogRequestFilterItem: Codable, Hashable, Sendable {
    public let field: String
    public let op: ItemsListCatalogRequestFilterItemOp
    public let value: ItemsListCatalogRequestFilterItemValue
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        field: String,
        op: ItemsListCatalogRequestFilterItemOp,
        value: ItemsListCatalogRequestFilterItemValue,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.field = field
        self.op = op
        self.value = value
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.field = try container.decode(String.self, forKey: .field)
        self.op = try container.decode(ItemsListCatalogRequestFilterItemOp.self, forKey: .op)
        self.value = try container.decode(ItemsListCatalogRequestFilterItemValue.self, forKey: .value)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.field, forKey: .field)
        try container.encode(self.op, forKey: .op)
        try container.encode(self.value, forKey: .value)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case field
        case op
        case value
    }
}