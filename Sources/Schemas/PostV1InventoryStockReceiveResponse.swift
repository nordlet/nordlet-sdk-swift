import Foundation

public struct PostV1InventoryStockReceiveResponse: Codable, Hashable, Sendable {
    public let movementId: String
    public let totalCost: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        movementId: String,
        totalCost: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.movementId = movementId
        self.totalCost = totalCost
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.movementId = try container.decode(String.self, forKey: .movementId)
        self.totalCost = try container.decode(String.self, forKey: .totalCost)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.movementId, forKey: .movementId)
        try container.encode(self.totalCost, forKey: .totalCost)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case movementId
        case totalCost
    }
}