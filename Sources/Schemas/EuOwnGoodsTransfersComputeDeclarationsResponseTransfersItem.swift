import Foundation

public struct EuOwnGoodsTransfersComputeDeclarationsResponseTransfersItem: Codable, Hashable, Sendable {
    public let movementId: String
    public let date: CalendarDate
    public let itemId: String
    public let itemName: String
    public let quantity: String
    public let cost: String
    public let fromCountryCode: String
    public let toCountryCode: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        movementId: String,
        date: CalendarDate,
        itemId: String,
        itemName: String,
        quantity: String,
        cost: String,
        fromCountryCode: String,
        toCountryCode: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.movementId = movementId
        self.date = date
        self.itemId = itemId
        self.itemName = itemName
        self.quantity = quantity
        self.cost = cost
        self.fromCountryCode = fromCountryCode
        self.toCountryCode = toCountryCode
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.movementId = try container.decode(String.self, forKey: .movementId)
        self.date = try container.decode(CalendarDate.self, forKey: .date)
        self.itemId = try container.decode(String.self, forKey: .itemId)
        self.itemName = try container.decode(String.self, forKey: .itemName)
        self.quantity = try container.decode(String.self, forKey: .quantity)
        self.cost = try container.decode(String.self, forKey: .cost)
        self.fromCountryCode = try container.decode(String.self, forKey: .fromCountryCode)
        self.toCountryCode = try container.decode(String.self, forKey: .toCountryCode)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.movementId, forKey: .movementId)
        try container.encode(self.date, forKey: .date)
        try container.encode(self.itemId, forKey: .itemId)
        try container.encode(self.itemName, forKey: .itemName)
        try container.encode(self.quantity, forKey: .quantity)
        try container.encode(self.cost, forKey: .cost)
        try container.encode(self.fromCountryCode, forKey: .fromCountryCode)
        try container.encode(self.toCountryCode, forKey: .toCountryCode)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case movementId
        case date
        case itemId
        case itemName
        case quantity
        case cost
        case fromCountryCode
        case toCountryCode
    }
}