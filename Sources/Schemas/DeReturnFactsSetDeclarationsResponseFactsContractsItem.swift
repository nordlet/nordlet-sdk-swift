import Foundation

public struct DeReturnFactsSetDeclarationsResponseFactsContractsItem: Codable, Hashable, Sendable {
    public let kind: String
    public let date: CalendarDate
    public let partner: String
    public let amount: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        kind: String,
        date: CalendarDate,
        partner: String,
        amount: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.kind = kind
        self.date = date
        self.partner = partner
        self.amount = amount
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.kind = try container.decode(String.self, forKey: .kind)
        self.date = try container.decode(CalendarDate.self, forKey: .date)
        self.partner = try container.decode(String.self, forKey: .partner)
        self.amount = try container.decode(String.self, forKey: .amount)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.kind, forKey: .kind)
        try container.encode(self.date, forKey: .date)
        try container.encode(self.partner, forKey: .partner)
        try container.encode(self.amount, forKey: .amount)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case kind
        case date
        case partner
        case amount
    }
}