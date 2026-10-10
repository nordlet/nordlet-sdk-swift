import Foundation

public struct EuDac7PreviewDeclarationsResponse: Codable, Hashable, Sendable {
    public let year: Int64
    public let country: String
    public let system: String
    public let sendsDirectly: Bool
    public let messageTypeIndic: String
    public let currency: String
    public let sellers: [EuDac7PreviewDeclarationsResponseSellersItem]
    public let warnings: [String]
    public let source: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        year: Int64,
        country: String,
        system: String,
        sendsDirectly: Bool,
        messageTypeIndic: String,
        currency: String,
        sellers: [EuDac7PreviewDeclarationsResponseSellersItem],
        warnings: [String],
        source: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.year = year
        self.country = country
        self.system = system
        self.sendsDirectly = sendsDirectly
        self.messageTypeIndic = messageTypeIndic
        self.currency = currency
        self.sellers = sellers
        self.warnings = warnings
        self.source = source
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.country = try container.decode(String.self, forKey: .country)
        self.system = try container.decode(String.self, forKey: .system)
        self.sendsDirectly = try container.decode(Bool.self, forKey: .sendsDirectly)
        self.messageTypeIndic = try container.decode(String.self, forKey: .messageTypeIndic)
        self.currency = try container.decode(String.self, forKey: .currency)
        self.sellers = try container.decode([EuDac7PreviewDeclarationsResponseSellersItem].self, forKey: .sellers)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.source = try container.decode(String.self, forKey: .source)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.country, forKey: .country)
        try container.encode(self.system, forKey: .system)
        try container.encode(self.sendsDirectly, forKey: .sendsDirectly)
        try container.encode(self.messageTypeIndic, forKey: .messageTypeIndic)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.sellers, forKey: .sellers)
        try container.encode(self.warnings, forKey: .warnings)
        try container.encode(self.source, forKey: .source)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case year
        case country
        case system
        case sendsDirectly
        case messageTypeIndic
        case currency
        case sellers
        case warnings
        case source
    }
}