import Foundation

public struct PostV1InventoryLandedCostsGetResponseLinesItem: Codable, Hashable, Sendable {
    public let movementId: String
    public let allocatedAmount: String
    public let newUnitCost: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        movementId: String,
        allocatedAmount: String,
        newUnitCost: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.movementId = movementId
        self.allocatedAmount = allocatedAmount
        self.newUnitCost = newUnitCost
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.movementId = try container.decode(String.self, forKey: .movementId)
        self.allocatedAmount = try container.decode(String.self, forKey: .allocatedAmount)
        self.newUnitCost = try container.decode(String.self, forKey: .newUnitCost)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.movementId, forKey: .movementId)
        try container.encode(self.allocatedAmount, forKey: .allocatedAmount)
        try container.encode(self.newUnitCost, forKey: .newUnitCost)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case movementId
        case allocatedAmount
        case newUnitCost
    }
}