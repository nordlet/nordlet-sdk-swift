import Foundation

public struct PostV1BillingAccountGetResponse: Codable, Hashable, Sendable {
    public let plan: PostV1BillingAccountGetResponsePlan
    public let status: PostV1BillingAccountGetResponseStatus
    public let balanceCents: Int64
    public let trialEndsAt: Nullable<String>
    public let firstTopUpAt: Nullable<String>
    public let lastChargedDate: Nullable<String>
    public let paymentsConfigured: Bool
    public let hasPaymentAccount: Bool
    public let hasSubscription: Bool
    public let paymentFailedAt: Nullable<String>
    public let paymentFailedInvoiceUrl: Nullable<String>
    public let monthToDate: PostV1BillingAccountGetResponseMonthToDate
    public let plans: [String: PostV1BillingAccountGetResponsePlansValue]
    public let topUp: PostV1BillingAccountGetResponseTopUp
    public let trialDays: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        plan: PostV1BillingAccountGetResponsePlan,
        status: PostV1BillingAccountGetResponseStatus,
        balanceCents: Int64,
        trialEndsAt: Nullable<String>,
        firstTopUpAt: Nullable<String>,
        lastChargedDate: Nullable<String>,
        paymentsConfigured: Bool,
        hasPaymentAccount: Bool,
        hasSubscription: Bool,
        paymentFailedAt: Nullable<String>,
        paymentFailedInvoiceUrl: Nullable<String>,
        monthToDate: PostV1BillingAccountGetResponseMonthToDate,
        plans: [String: PostV1BillingAccountGetResponsePlansValue],
        topUp: PostV1BillingAccountGetResponseTopUp,
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
        self.hasPaymentAccount = hasPaymentAccount
        self.hasSubscription = hasSubscription
        self.paymentFailedAt = paymentFailedAt
        self.paymentFailedInvoiceUrl = paymentFailedInvoiceUrl
        self.monthToDate = monthToDate
        self.plans = plans
        self.topUp = topUp
        self.trialDays = trialDays
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.plan = try container.decode(PostV1BillingAccountGetResponsePlan.self, forKey: .plan)
        self.status = try container.decode(PostV1BillingAccountGetResponseStatus.self, forKey: .status)
        self.balanceCents = try container.decode(Int64.self, forKey: .balanceCents)
        self.trialEndsAt = try container.decode(Nullable<String>.self, forKey: .trialEndsAt)
        self.firstTopUpAt = try container.decode(Nullable<String>.self, forKey: .firstTopUpAt)
        self.lastChargedDate = try container.decode(Nullable<String>.self, forKey: .lastChargedDate)
        self.paymentsConfigured = try container.decode(Bool.self, forKey: .paymentsConfigured)
        self.hasPaymentAccount = try container.decode(Bool.self, forKey: .hasPaymentAccount)
        self.hasSubscription = try container.decode(Bool.self, forKey: .hasSubscription)
        self.paymentFailedAt = try container.decode(Nullable<String>.self, forKey: .paymentFailedAt)
        self.paymentFailedInvoiceUrl = try container.decode(Nullable<String>.self, forKey: .paymentFailedInvoiceUrl)
        self.monthToDate = try container.decode(PostV1BillingAccountGetResponseMonthToDate.self, forKey: .monthToDate)
        self.plans = try container.decode([String: PostV1BillingAccountGetResponsePlansValue].self, forKey: .plans)
        self.topUp = try container.decode(PostV1BillingAccountGetResponseTopUp.self, forKey: .topUp)
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
        try container.encode(self.hasPaymentAccount, forKey: .hasPaymentAccount)
        try container.encode(self.hasSubscription, forKey: .hasSubscription)
        try container.encode(self.paymentFailedAt, forKey: .paymentFailedAt)
        try container.encode(self.paymentFailedInvoiceUrl, forKey: .paymentFailedInvoiceUrl)
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
        case hasPaymentAccount
        case hasSubscription
        case paymentFailedAt
        case paymentFailedInvoiceUrl
        case monthToDate
        case plans
        case topUp
        case trialDays
    }
}