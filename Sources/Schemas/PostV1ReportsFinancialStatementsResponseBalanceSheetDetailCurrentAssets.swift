import Foundation

public struct PostV1ReportsFinancialStatementsResponseBalanceSheetDetailCurrentAssets: Codable, Hashable, Sendable {
    public let inventories: String
    public let receivables: String
    public let otherCurrent: String
    public let cash: String
    public let total: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        inventories: String,
        receivables: String,
        otherCurrent: String,
        cash: String,
        total: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.inventories = inventories
        self.receivables = receivables
        self.otherCurrent = otherCurrent
        self.cash = cash
        self.total = total
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.inventories = try container.decode(String.self, forKey: .inventories)
        self.receivables = try container.decode(String.self, forKey: .receivables)
        self.otherCurrent = try container.decode(String.self, forKey: .otherCurrent)
        self.cash = try container.decode(String.self, forKey: .cash)
        self.total = try container.decode(String.self, forKey: .total)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.inventories, forKey: .inventories)
        try container.encode(self.receivables, forKey: .receivables)
        try container.encode(self.otherCurrent, forKey: .otherCurrent)
        try container.encode(self.cash, forKey: .cash)
        try container.encode(self.total, forKey: .total)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case inventories
        case receivables
        case otherCurrent
        case cash
        case total
    }
}