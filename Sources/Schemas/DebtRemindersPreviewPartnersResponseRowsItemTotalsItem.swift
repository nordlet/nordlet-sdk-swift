import Foundation

public struct DebtRemindersPreviewPartnersResponseRowsItemTotalsItem: Codable, Hashable, Sendable {
    public let currency: String
    public let totalDue: String
    public let interestDue: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        currency: String,
        totalDue: String,
        interestDue: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.currency = currency
        self.totalDue = totalDue
        self.interestDue = interestDue
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.totalDue = try container.decode(String.self, forKey: .totalDue)
        self.interestDue = try container.decode(String.self, forKey: .interestDue)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.totalDue, forKey: .totalDue)
        try container.encode(self.interestDue, forKey: .interestDue)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case currency
        case totalDue
        case interestDue
    }
}