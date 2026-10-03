import Foundation

public struct PostV1AccountReferralGetResponse: Codable, Hashable, Sendable {
    public let code: String
    public let link: String
    public let points: Int64
    public let referredCount: Int64
    public let rates: PostV1AccountReferralGetResponseRates
    public let history: [PostV1AccountReferralGetResponseHistoryItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        code: String,
        link: String,
        points: Int64,
        referredCount: Int64,
        rates: PostV1AccountReferralGetResponseRates,
        history: [PostV1AccountReferralGetResponseHistoryItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.code = code
        self.link = link
        self.points = points
        self.referredCount = referredCount
        self.rates = rates
        self.history = history
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.code = try container.decode(String.self, forKey: .code)
        self.link = try container.decode(String.self, forKey: .link)
        self.points = try container.decode(Int64.self, forKey: .points)
        self.referredCount = try container.decode(Int64.self, forKey: .referredCount)
        self.rates = try container.decode(PostV1AccountReferralGetResponseRates.self, forKey: .rates)
        self.history = try container.decode([PostV1AccountReferralGetResponseHistoryItem].self, forKey: .history)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.link, forKey: .link)
        try container.encode(self.points, forKey: .points)
        try container.encode(self.referredCount, forKey: .referredCount)
        try container.encode(self.rates, forKey: .rates)
        try container.encode(self.history, forKey: .history)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case link
        case points
        case referredCount
        case rates
        case history
    }
}