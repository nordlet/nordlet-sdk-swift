import Foundation

public struct PostV1PurchasesReceiptsCreateRequestLinesItem: Codable, Hashable, Sendable {
    public let orderLineId: String
    public let quantity: String
    public let lotNumber: String?
    public let expiryDate: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        orderLineId: String,
        quantity: String,
        lotNumber: String? = nil,
        expiryDate: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.orderLineId = orderLineId
        self.quantity = quantity
        self.lotNumber = lotNumber
        self.expiryDate = expiryDate
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.orderLineId = try container.decode(String.self, forKey: .orderLineId)
        self.quantity = try container.decode(String.self, forKey: .quantity)
        self.lotNumber = try container.decodeIfPresent(String.self, forKey: .lotNumber)
        self.expiryDate = try container.decodeIfPresent(String.self, forKey: .expiryDate)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.orderLineId, forKey: .orderLineId)
        try container.encode(self.quantity, forKey: .quantity)
        try container.encodeIfPresent(self.lotNumber, forKey: .lotNumber)
        try container.encodeIfPresent(self.expiryDate, forKey: .expiryDate)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case orderLineId
        case quantity
        case lotNumber
        case expiryDate
    }
}