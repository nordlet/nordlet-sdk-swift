import Foundation

public struct PostV1InventoryStockWriteOffResponse: Codable, Hashable, Sendable {
    public let movementId: String
    public let totalCost: String
    public let journalTransactionId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        movementId: String,
        totalCost: String,
        journalTransactionId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.movementId = movementId
        self.totalCost = totalCost
        self.journalTransactionId = journalTransactionId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.movementId = try container.decode(String.self, forKey: .movementId)
        self.totalCost = try container.decode(String.self, forKey: .totalCost)
        self.journalTransactionId = try container.decode(String.self, forKey: .journalTransactionId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.movementId, forKey: .movementId)
        try container.encode(self.totalCost, forKey: .totalCost)
        try container.encode(self.journalTransactionId, forKey: .journalTransactionId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case movementId
        case totalCost
        case journalTransactionId
    }
}