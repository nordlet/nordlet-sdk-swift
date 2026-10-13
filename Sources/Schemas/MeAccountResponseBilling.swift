import Foundation

public struct MeAccountResponseBilling: Codable, Hashable, Sendable {
    public let status: MeAccountResponseBillingStatus
    public let plan: String
    public let balanceCents: Int64
    public let overdraftAllowanceCents: Int64
    public let trialEndsAt: Nullable<Date>
    public let payerUserId: String
    public let payerEmail: String
    public let isPayer: Bool
    public let planChosen: Bool
    public let flatRate: Bool
    public let accountType: MeAccountResponseBillingAccountType
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        status: MeAccountResponseBillingStatus,
        plan: String,
        balanceCents: Int64,
        overdraftAllowanceCents: Int64,
        trialEndsAt: Nullable<Date>,
        payerUserId: String,
        payerEmail: String,
        isPayer: Bool,
        planChosen: Bool,
        flatRate: Bool,
        accountType: MeAccountResponseBillingAccountType,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.status = status
        self.plan = plan
        self.balanceCents = balanceCents
        self.overdraftAllowanceCents = overdraftAllowanceCents
        self.trialEndsAt = trialEndsAt
        self.payerUserId = payerUserId
        self.payerEmail = payerEmail
        self.isPayer = isPayer
        self.planChosen = planChosen
        self.flatRate = flatRate
        self.accountType = accountType
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.status = try container.decode(MeAccountResponseBillingStatus.self, forKey: .status)
        self.plan = try container.decode(String.self, forKey: .plan)
        self.balanceCents = try container.decode(Int64.self, forKey: .balanceCents)
        self.overdraftAllowanceCents = try container.decode(Int64.self, forKey: .overdraftAllowanceCents)
        self.trialEndsAt = try container.decode(Nullable<Date>.self, forKey: .trialEndsAt)
        self.payerUserId = try container.decode(String.self, forKey: .payerUserId)
        self.payerEmail = try container.decode(String.self, forKey: .payerEmail)
        self.isPayer = try container.decode(Bool.self, forKey: .isPayer)
        self.planChosen = try container.decode(Bool.self, forKey: .planChosen)
        self.flatRate = try container.decode(Bool.self, forKey: .flatRate)
        self.accountType = try container.decode(MeAccountResponseBillingAccountType.self, forKey: .accountType)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.plan, forKey: .plan)
        try container.encode(self.balanceCents, forKey: .balanceCents)
        try container.encode(self.overdraftAllowanceCents, forKey: .overdraftAllowanceCents)
        try container.encode(self.trialEndsAt, forKey: .trialEndsAt)
        try container.encode(self.payerUserId, forKey: .payerUserId)
        try container.encode(self.payerEmail, forKey: .payerEmail)
        try container.encode(self.isPayer, forKey: .isPayer)
        try container.encode(self.planChosen, forKey: .planChosen)
        try container.encode(self.flatRate, forKey: .flatRate)
        try container.encode(self.accountType, forKey: .accountType)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case status
        case plan
        case balanceCents
        case overdraftAllowanceCents
        case trialEndsAt
        case payerUserId
        case payerEmail
        case isPayer
        case planChosen
        case flatRate
        case accountType
    }
}