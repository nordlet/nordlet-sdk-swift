import Foundation

public struct PostV1DeclarationsLtFr0564ComputeResponseTotals: Codable, Hashable, Sendable {
    public let goods: String
    public let triangular: String
    public let services: String
    public let rows: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        goods: String,
        triangular: String,
        services: String,
        rows: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.goods = goods
        self.triangular = triangular
        self.services = services
        self.rows = rows
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.goods = try container.decode(String.self, forKey: .goods)
        self.triangular = try container.decode(String.self, forKey: .triangular)
        self.services = try container.decode(String.self, forKey: .services)
        self.rows = try container.decode(Int64.self, forKey: .rows)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.goods, forKey: .goods)
        try container.encode(self.triangular, forKey: .triangular)
        try container.encode(self.services, forKey: .services)
        try container.encode(self.rows, forKey: .rows)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case goods
        case triangular
        case services
        case rows
    }
}