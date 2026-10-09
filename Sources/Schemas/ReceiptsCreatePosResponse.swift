import Foundation

public struct ReceiptsCreatePosResponse: Codable, Hashable, Sendable {
    public let id: String
    public let shiftId: String
    public let number: Int64
    public let netTotal: String
    public let vatTotal: String
    public let grossTotal: String
    public let cashAmount: String
    public let cardAmount: String
    public let createdAt: Date
    public let lines: [ReceiptsCreatePosResponseLinesItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        shiftId: String,
        number: Int64,
        netTotal: String,
        vatTotal: String,
        grossTotal: String,
        cashAmount: String,
        cardAmount: String,
        createdAt: Date,
        lines: [ReceiptsCreatePosResponseLinesItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.shiftId = shiftId
        self.number = number
        self.netTotal = netTotal
        self.vatTotal = vatTotal
        self.grossTotal = grossTotal
        self.cashAmount = cashAmount
        self.cardAmount = cardAmount
        self.createdAt = createdAt
        self.lines = lines
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.shiftId = try container.decode(String.self, forKey: .shiftId)
        self.number = try container.decode(Int64.self, forKey: .number)
        self.netTotal = try container.decode(String.self, forKey: .netTotal)
        self.vatTotal = try container.decode(String.self, forKey: .vatTotal)
        self.grossTotal = try container.decode(String.self, forKey: .grossTotal)
        self.cashAmount = try container.decode(String.self, forKey: .cashAmount)
        self.cardAmount = try container.decode(String.self, forKey: .cardAmount)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.lines = try container.decode([ReceiptsCreatePosResponseLinesItem].self, forKey: .lines)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.shiftId, forKey: .shiftId)
        try container.encode(self.number, forKey: .number)
        try container.encode(self.netTotal, forKey: .netTotal)
        try container.encode(self.vatTotal, forKey: .vatTotal)
        try container.encode(self.grossTotal, forKey: .grossTotal)
        try container.encode(self.cashAmount, forKey: .cashAmount)
        try container.encode(self.cardAmount, forKey: .cardAmount)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.lines, forKey: .lines)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case shiftId
        case number
        case netTotal
        case vatTotal
        case grossTotal
        case cashAmount
        case cardAmount
        case createdAt
        case lines
    }
}