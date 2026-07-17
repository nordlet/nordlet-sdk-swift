import Foundation

public struct PostV1InventoryStockTransferResponse: Codable, Hashable, Sendable {
    public let outMovementId: String
    public let inMovementId: String
    public let totalCost: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        outMovementId: String,
        inMovementId: String,
        totalCost: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.outMovementId = outMovementId
        self.inMovementId = inMovementId
        self.totalCost = totalCost
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.outMovementId = try container.decode(String.self, forKey: .outMovementId)
        self.inMovementId = try container.decode(String.self, forKey: .inMovementId)
        self.totalCost = try container.decode(String.self, forKey: .totalCost)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.outMovementId, forKey: .outMovementId)
        try container.encode(self.inMovementId, forKey: .inMovementId)
        try container.encode(self.totalCost, forKey: .totalCost)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case outMovementId
        case inMovementId
        case totalCost
    }
}