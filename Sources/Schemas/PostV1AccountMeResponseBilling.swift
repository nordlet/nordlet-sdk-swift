import Foundation

public struct PostV1AccountMeResponseBilling: Codable, Hashable, Sendable {
    public let status: PostV1AccountMeResponseBillingStatus
    public let plan: String
    public let balanceCents: Int64
    public let trialEndsAt: Nullable<String>
    public let payerUserId: String
    public let payerEmail: String
    public let isPayer: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        status: PostV1AccountMeResponseBillingStatus,
        plan: String,
        balanceCents: Int64,
        trialEndsAt: Nullable<String>,
        payerUserId: String,
        payerEmail: String,
        isPayer: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.status = status
        self.plan = plan
        self.balanceCents = balanceCents
        self.trialEndsAt = trialEndsAt
        self.payerUserId = payerUserId
        self.payerEmail = payerEmail
        self.isPayer = isPayer
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.status = try container.decode(PostV1AccountMeResponseBillingStatus.self, forKey: .status)
        self.plan = try container.decode(String.self, forKey: .plan)
        self.balanceCents = try container.decode(Int64.self, forKey: .balanceCents)
        self.trialEndsAt = try container.decode(Nullable<String>.self, forKey: .trialEndsAt)
        self.payerUserId = try container.decode(String.self, forKey: .payerUserId)
        self.payerEmail = try container.decode(String.self, forKey: .payerEmail)
        self.isPayer = try container.decode(Bool.self, forKey: .isPayer)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.plan, forKey: .plan)
        try container.encode(self.balanceCents, forKey: .balanceCents)
        try container.encode(self.trialEndsAt, forKey: .trialEndsAt)
        try container.encode(self.payerUserId, forKey: .payerUserId)
        try container.encode(self.payerEmail, forKey: .payerEmail)
        try container.encode(self.isPayer, forKey: .isPayer)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case status
        case plan
        case balanceCents
        case trialEndsAt
        case payerUserId
        case payerEmail
        case isPayer
    }
}