import Foundation

public struct GbP11DItemsListDeclarationsResponseItemsItemItemVouchersOrCreditCards: Codable, Hashable, Sendable {
    public let gross: String
    public let madeGood: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        gross: String,
        madeGood: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.gross = gross
        self.madeGood = madeGood
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.gross = try container.decode(String.self, forKey: .gross)
        self.madeGood = try container.decode(String.self, forKey: .madeGood)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.gross, forKey: .gross)
        try container.encode(self.madeGood, forKey: .madeGood)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case gross
        case madeGood
    }
}