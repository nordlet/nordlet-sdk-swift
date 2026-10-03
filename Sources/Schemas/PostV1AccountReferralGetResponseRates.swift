import Foundation

public struct PostV1AccountReferralGetResponseRates: Codable, Hashable, Sendable {
    public let perEur: Int64
    public let pointCents: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        perEur: Int64,
        pointCents: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.perEur = perEur
        self.pointCents = pointCents
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.perEur = try container.decode(Int64.self, forKey: .perEur)
        self.pointCents = try container.decode(Int64.self, forKey: .pointCents)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.perEur, forKey: .perEur)
        try container.encode(self.pointCents, forKey: .pointCents)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case perEur
        case pointCents
    }
}