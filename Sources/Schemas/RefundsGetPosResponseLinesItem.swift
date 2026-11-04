import Foundation

public struct RefundsGetPosResponseLinesItem: Codable, Hashable, Sendable {
    public let id: String
    public let receiptLineId: String
    public let itemId: Nullable<String>
    public let quantity: String
    public let netAmount: String
    public let vatAmount: String
    public let grossAmount: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        receiptLineId: String,
        itemId: Nullable<String>,
        quantity: String,
        netAmount: String,
        vatAmount: String,
        grossAmount: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.receiptLineId = receiptLineId
        self.itemId = itemId
        self.quantity = quantity
        self.netAmount = netAmount
        self.vatAmount = vatAmount
        self.grossAmount = grossAmount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.receiptLineId = try container.decode(String.self, forKey: .receiptLineId)
        self.itemId = try container.decode(Nullable<String>.self, forKey: .itemId)
        self.quantity = try container.decode(String.self, forKey: .quantity)
        self.netAmount = try container.decode(String.self, forKey: .netAmount)
        self.vatAmount = try container.decode(String.self, forKey: .vatAmount)
        self.grossAmount = try container.decode(String.self, forKey: .grossAmount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.receiptLineId, forKey: .receiptLineId)
        try container.encode(self.itemId, forKey: .itemId)
        try container.encode(self.quantity, forKey: .quantity)
        try container.encode(self.netAmount, forKey: .netAmount)
        try container.encode(self.vatAmount, forKey: .vatAmount)
        try container.encode(self.grossAmount, forKey: .grossAmount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case receiptLineId
        case itemId
        case quantity
        case netAmount
        case vatAmount
        case grossAmount
    }
}