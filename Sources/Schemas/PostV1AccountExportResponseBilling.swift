import Foundation

public struct PostV1AccountExportResponseBilling: Codable, Hashable, Sendable {
    public let status: String
    public let plan: String
    public let balanceCents: Int64
    public let trialEndsAt: Nullable<String>
    public let firstTopUpAt: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        status: String,
        plan: String,
        balanceCents: Int64,
        trialEndsAt: Nullable<String>,
        firstTopUpAt: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.status = status
        self.plan = plan
        self.balanceCents = balanceCents
        self.trialEndsAt = trialEndsAt
        self.firstTopUpAt = firstTopUpAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.status = try container.decode(String.self, forKey: .status)
        self.plan = try container.decode(String.self, forKey: .plan)
        self.balanceCents = try container.decode(Int64.self, forKey: .balanceCents)
        self.trialEndsAt = try container.decode(Nullable<String>.self, forKey: .trialEndsAt)
        self.firstTopUpAt = try container.decode(Nullable<String>.self, forKey: .firstTopUpAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.plan, forKey: .plan)
        try container.encode(self.balanceCents, forKey: .balanceCents)
        try container.encode(self.trialEndsAt, forKey: .trialEndsAt)
        try container.encode(self.firstTopUpAt, forKey: .firstTopUpAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case status
        case plan
        case balanceCents
        case trialEndsAt
        case firstTopUpAt
    }
}