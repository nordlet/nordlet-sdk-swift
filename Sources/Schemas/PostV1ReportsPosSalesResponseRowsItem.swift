import Foundation

public struct PostV1ReportsPosSalesResponseRowsItem: Codable, Hashable, Sendable {
    public let reportId: String
    public let reportNumber: String
    public let date: String
    public let net: String
    public let vat: String
    public let gross: String
    public let cash: String
    public let card: String
    public let cogs: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        reportId: String,
        reportNumber: String,
        date: String,
        net: String,
        vat: String,
        gross: String,
        cash: String,
        card: String,
        cogs: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.reportId = reportId
        self.reportNumber = reportNumber
        self.date = date
        self.net = net
        self.vat = vat
        self.gross = gross
        self.cash = cash
        self.card = card
        self.cogs = cogs
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.reportId = try container.decode(String.self, forKey: .reportId)
        self.reportNumber = try container.decode(String.self, forKey: .reportNumber)
        self.date = try container.decode(String.self, forKey: .date)
        self.net = try container.decode(String.self, forKey: .net)
        self.vat = try container.decode(String.self, forKey: .vat)
        self.gross = try container.decode(String.self, forKey: .gross)
        self.cash = try container.decode(String.self, forKey: .cash)
        self.card = try container.decode(String.self, forKey: .card)
        self.cogs = try container.decode(Nullable<String>.self, forKey: .cogs)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.reportId, forKey: .reportId)
        try container.encode(self.reportNumber, forKey: .reportNumber)
        try container.encode(self.date, forKey: .date)
        try container.encode(self.net, forKey: .net)
        try container.encode(self.vat, forKey: .vat)
        try container.encode(self.gross, forKey: .gross)
        try container.encode(self.cash, forKey: .cash)
        try container.encode(self.card, forKey: .card)
        try container.encode(self.cogs, forKey: .cogs)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case reportId
        case reportNumber
        case date
        case net
        case vat
        case gross
        case cash
        case card
        case cogs
    }
}