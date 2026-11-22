import Foundation

public struct GbP11DItemsCreateDeclarationsRequestItemExpensesHomeTelephone: Codable, Hashable, Sendable {
    public let cost: String
    public let madeGood: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        cost: String,
        madeGood: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.cost = cost
        self.madeGood = madeGood
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cost = try container.decode(String.self, forKey: .cost)
        self.madeGood = try container.decode(String.self, forKey: .madeGood)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.cost, forKey: .cost)
        try container.encode(self.madeGood, forKey: .madeGood)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case cost
        case madeGood
    }
}