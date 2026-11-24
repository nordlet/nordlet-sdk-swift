import Foundation

public struct EeTsdAnnexesSetDeclarationsRequestAnnex4StockOption: Codable, Hashable, Sendable {
    /// `sale`: the option was sold (4081 – 4083); `exercise`: the shares were acquired (4081 – 4082 – 4083)
    public let event: EeTsdAnnexesSetDeclarationsRequestAnnex4StockOptionEvent
    /// 4081: market price
    public let marketPrice: String
    /// 4082: exercise price, for `exercise` only
    public let exercisePrice: String?
    /// 4083: option premium
    public let premium: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        event: EeTsdAnnexesSetDeclarationsRequestAnnex4StockOptionEvent,
        marketPrice: String,
        exercisePrice: String? = nil,
        premium: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.event = event
        self.marketPrice = marketPrice
        self.exercisePrice = exercisePrice
        self.premium = premium
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.event = try container.decode(EeTsdAnnexesSetDeclarationsRequestAnnex4StockOptionEvent.self, forKey: .event)
        self.marketPrice = try container.decode(String.self, forKey: .marketPrice)
        self.exercisePrice = try container.decodeIfPresent(String.self, forKey: .exercisePrice)
        self.premium = try container.decode(String.self, forKey: .premium)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.event, forKey: .event)
        try container.encode(self.marketPrice, forKey: .marketPrice)
        try container.encodeIfPresent(self.exercisePrice, forKey: .exercisePrice)
        try container.encode(self.premium, forKey: .premium)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case event
        case marketPrice
        case exercisePrice
        case premium
    }
}