import Foundation

public struct PostV1BillingAccountSetPlanResponse: Codable, Hashable, Sendable {
    public let plan: PostV1BillingAccountSetPlanResponsePlan
    public let status: PostV1BillingAccountSetPlanResponseStatus
    public let balanceCents: Int64
    public let trialEndsAt: Nullable<String>
    public let firstTopUpAt: Nullable<String>
    public let lastChargedDate: Nullable<String>
    public let paymentsConfigured: Bool
    public let monthToDate: PostV1BillingAccountSetPlanResponseMonthToDate
    public let plans: [String: PostV1BillingAccountSetPlanResponsePlansValue]
    public let topUp: PostV1BillingAccountSetPlanResponseTopUp
    public let trialDays: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        plan: PostV1BillingAccountSetPlanResponsePlan,
        status: PostV1BillingAccountSetPlanResponseStatus,
        balanceCents: Int64,
        trialEndsAt: Nullable<String>,
        firstTopUpAt: Nullable<String>,
        lastChargedDate: Nullable<String>,
        paymentsConfigured: Bool,
        monthToDate: PostV1BillingAccountSetPlanResponseMonthToDate,
        plans: [String: PostV1BillingAccountSetPlanResponsePlansValue],
        topUp: PostV1BillingAccountSetPlanResponseTopUp,
        trialDays: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.plan = plan
        self.status = status
        self.balanceCents = balanceCents
        self.trialEndsAt = trialEndsAt
        self.firstTopUpAt = firstTopUpAt
        self.lastChargedDate = lastChargedDate
        self.paymentsConfigured = paymentsConfigured
        self.monthToDate = monthToDate
        self.plans = plans
        self.topUp = topUp
        self.trialDays = trialDays
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.plan = try container.decode(PostV1BillingAccountSetPlanResponsePlan.self, forKey: .plan)
        self.status = try container.decode(PostV1BillingAccountSetPlanResponseStatus.self, forKey: .status)
        self.balanceCents = try container.decode(Int64.self, forKey: .balanceCents)
        self.trialEndsAt = try container.decode(Nullable<String>.self, forKey: .trialEndsAt)
        self.firstTopUpAt = try container.decode(Nullable<String>.self, forKey: .firstTopUpAt)
        self.lastChargedDate = try container.decode(Nullable<String>.self, forKey: .lastChargedDate)
        self.paymentsConfigured = try container.decode(Bool.self, forKey: .paymentsConfigured)
        self.monthToDate = try container.decode(PostV1BillingAccountSetPlanResponseMonthToDate.self, forKey: .monthToDate)
        self.plans = try container.decode([String: PostV1BillingAccountSetPlanResponsePlansValue].self, forKey: .plans)
        self.topUp = try container.decode(PostV1BillingAccountSetPlanResponseTopUp.self, forKey: .topUp)
        self.trialDays = try container.decode(Int64.self, forKey: .trialDays)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.plan, forKey: .plan)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.balanceCents, forKey: .balanceCents)
        try container.encode(self.trialEndsAt, forKey: .trialEndsAt)
        try container.encode(self.firstTopUpAt, forKey: .firstTopUpAt)
        try container.encode(self.lastChargedDate, forKey: .lastChargedDate)
        try container.encode(self.paymentsConfigured, forKey: .paymentsConfigured)
        try container.encode(self.monthToDate, forKey: .monthToDate)
        try container.encode(self.plans, forKey: .plans)
        try container.encode(self.topUp, forKey: .topUp)
        try container.encode(self.trialDays, forKey: .trialDays)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case plan
        case status
        case balanceCents
        case trialEndsAt
        case firstTopUpAt
        case lastChargedDate
        case paymentsConfigured
        case monthToDate
        case plans
        case topUp
        case trialDays
    }
}