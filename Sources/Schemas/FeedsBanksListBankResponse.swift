import Foundation

public struct FeedsBanksListBankResponse: Codable, Hashable, Sendable {
    public let provider: String
    public let banks: [FeedsBanksListBankResponseBanksItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        provider: String,
        banks: [FeedsBanksListBankResponseBanksItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.provider = provider
        self.banks = banks
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.provider = try container.decode(String.self, forKey: .provider)
        self.banks = try container.decode([FeedsBanksListBankResponseBanksItem].self, forKey: .banks)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.provider, forKey: .provider)
        try container.encode(self.banks, forKey: .banks)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case provider
        case banks
    }
}