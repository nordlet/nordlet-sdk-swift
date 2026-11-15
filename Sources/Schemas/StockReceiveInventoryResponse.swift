import Foundation

public struct StockReceiveInventoryResponse: Codable, Hashable, Sendable {
    public let movementId: String
    public let totalCost: String
    public let journalTransactionId: String?
    public let warnings: [StockReceiveInventoryResponseWarningsItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        movementId: String,
        totalCost: String,
        journalTransactionId: String? = nil,
        warnings: [StockReceiveInventoryResponseWarningsItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.movementId = movementId
        self.totalCost = totalCost
        self.journalTransactionId = journalTransactionId
        self.warnings = warnings
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.movementId = try container.decode(String.self, forKey: .movementId)
        self.totalCost = try container.decode(String.self, forKey: .totalCost)
        self.journalTransactionId = try container.decodeIfPresent(String.self, forKey: .journalTransactionId)
        self.warnings = try container.decode([StockReceiveInventoryResponseWarningsItem].self, forKey: .warnings)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.movementId, forKey: .movementId)
        try container.encode(self.totalCost, forKey: .totalCost)
        try container.encodeIfPresent(self.journalTransactionId, forKey: .journalTransactionId)
        try container.encode(self.warnings, forKey: .warnings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case movementId
        case totalCost
        case journalTransactionId
        case warnings
    }
}