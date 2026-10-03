import Foundation

public struct PostV1AccountReferralConvertResponse: Codable, Hashable, Sendable {
    public let points: Int64
    public let amountCents: Int64
    public let pointsLeft: Int64
    public let balanceCents: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        points: Int64,
        amountCents: Int64,
        pointsLeft: Int64,
        balanceCents: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.points = points
        self.amountCents = amountCents
        self.pointsLeft = pointsLeft
        self.balanceCents = balanceCents
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.points = try container.decode(Int64.self, forKey: .points)
        self.amountCents = try container.decode(Int64.self, forKey: .amountCents)
        self.pointsLeft = try container.decode(Int64.self, forKey: .pointsLeft)
        self.balanceCents = try container.decode(Int64.self, forKey: .balanceCents)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.points, forKey: .points)
        try container.encode(self.amountCents, forKey: .amountCents)
        try container.encode(self.pointsLeft, forKey: .pointsLeft)
        try container.encode(self.balanceCents, forKey: .balanceCents)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case points
        case amountCents
        case pointsLeft
        case balanceCents
    }
}