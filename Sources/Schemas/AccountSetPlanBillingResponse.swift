import Foundation

public struct AccountSetPlanBillingResponse: Codable, Hashable, Sendable {
    public let plan: AccountSetPlanBillingResponsePlan
    public let accountType: AccountSetPlanBillingResponseAccountType
    public let status: AccountSetPlanBillingResponseStatus
    public let balanceCents: Int64
    public let trialEndsAt: Nullable<Date>
    public let firstTopUpAt: Nullable<Date>
    public let lastChargedDate: Nullable<CalendarDate>
    public let paymentsConfigured: Bool
    public let hasPaymentAccount: Bool
    public let hasSubscription: Bool
    /// When the Stripe subscription ends after `subscription/cancel`; null while it renews
    public let subscriptionCancelAt: Nullable<Date>
    public let paymentFailedAt: Nullable<Date>
    public let paymentFailedInvoiceUrl: Nullable<String>
    public let monthToDate: AccountSetPlanBillingResponseMonthToDate
    public let plans: [String: AccountSetPlanBillingResponsePlansValue]
    public let apiRequestEur: String
    public let topUp: AccountSetPlanBillingResponseTopUp
    public let autoTopUp: AccountSetPlanBillingResponseAutoTopUp
    public let overdraftCapCents: Int64
    public let overdraftCapMaxCents: Int64
    public let trialDays: Int64
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        plan: AccountSetPlanBillingResponsePlan,
        accountType: AccountSetPlanBillingResponseAccountType,
        status: AccountSetPlanBillingResponseStatus,
        balanceCents: Int64,
        trialEndsAt: Nullable<Date>,
        firstTopUpAt: Nullable<Date>,
        lastChargedDate: Nullable<CalendarDate>,
        paymentsConfigured: Bool,
        hasPaymentAccount: Bool,
        hasSubscription: Bool,
        subscriptionCancelAt: Nullable<Date>,
        paymentFailedAt: Nullable<Date>,
        paymentFailedInvoiceUrl: Nullable<String>,
        monthToDate: AccountSetPlanBillingResponseMonthToDate,
        plans: [String: AccountSetPlanBillingResponsePlansValue],
        apiRequestEur: String,
        topUp: AccountSetPlanBillingResponseTopUp,
        autoTopUp: AccountSetPlanBillingResponseAutoTopUp,
        overdraftCapCents: Int64,
        overdraftCapMaxCents: Int64,
        trialDays: Int64,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.plan = plan
        self.accountType = accountType
        self.status = status
        self.balanceCents = balanceCents
        self.trialEndsAt = trialEndsAt
        self.firstTopUpAt = firstTopUpAt
        self.lastChargedDate = lastChargedDate
        self.paymentsConfigured = paymentsConfigured
        self.hasPaymentAccount = hasPaymentAccount
        self.hasSubscription = hasSubscription
        self.subscriptionCancelAt = subscriptionCancelAt
        self.paymentFailedAt = paymentFailedAt
        self.paymentFailedInvoiceUrl = paymentFailedInvoiceUrl
        self.monthToDate = monthToDate
        self.plans = plans
        self.apiRequestEur = apiRequestEur
        self.topUp = topUp
        self.autoTopUp = autoTopUp
        self.overdraftCapCents = overdraftCapCents
        self.overdraftCapMaxCents = overdraftCapMaxCents
        self.trialDays = trialDays
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.plan = try container.decode(AccountSetPlanBillingResponsePlan.self, forKey: .plan)
        self.accountType = try container.decode(AccountSetPlanBillingResponseAccountType.self, forKey: .accountType)
        self.status = try container.decode(AccountSetPlanBillingResponseStatus.self, forKey: .status)
        self.balanceCents = try container.decode(Int64.self, forKey: .balanceCents)
        self.trialEndsAt = try container.decode(Nullable<Date>.self, forKey: .trialEndsAt)
        self.firstTopUpAt = try container.decode(Nullable<Date>.self, forKey: .firstTopUpAt)
        self.lastChargedDate = try container.decode(Nullable<CalendarDate>.self, forKey: .lastChargedDate)
        self.paymentsConfigured = try container.decode(Bool.self, forKey: .paymentsConfigured)
        self.hasPaymentAccount = try container.decode(Bool.self, forKey: .hasPaymentAccount)
        self.hasSubscription = try container.decode(Bool.self, forKey: .hasSubscription)
        self.subscriptionCancelAt = try container.decode(Nullable<Date>.self, forKey: .subscriptionCancelAt)
        self.paymentFailedAt = try container.decode(Nullable<Date>.self, forKey: .paymentFailedAt)
        self.paymentFailedInvoiceUrl = try container.decode(Nullable<String>.self, forKey: .paymentFailedInvoiceUrl)
        self.monthToDate = try container.decode(AccountSetPlanBillingResponseMonthToDate.self, forKey: .monthToDate)
        self.plans = try container.decode([String: AccountSetPlanBillingResponsePlansValue].self, forKey: .plans)
        self.apiRequestEur = try container.decode(String.self, forKey: .apiRequestEur)
        self.topUp = try container.decode(AccountSetPlanBillingResponseTopUp.self, forKey: .topUp)
        self.autoTopUp = try container.decode(AccountSetPlanBillingResponseAutoTopUp.self, forKey: .autoTopUp)
        self.overdraftCapCents = try container.decode(Int64.self, forKey: .overdraftCapCents)
        self.overdraftCapMaxCents = try container.decode(Int64.self, forKey: .overdraftCapMaxCents)
        self.trialDays = try container.decode(Int64.self, forKey: .trialDays)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.plan, forKey: .plan)
        try container.encode(self.accountType, forKey: .accountType)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.balanceCents, forKey: .balanceCents)
        try container.encode(self.trialEndsAt, forKey: .trialEndsAt)
        try container.encode(self.firstTopUpAt, forKey: .firstTopUpAt)
        try container.encode(self.lastChargedDate, forKey: .lastChargedDate)
        try container.encode(self.paymentsConfigured, forKey: .paymentsConfigured)
        try container.encode(self.hasPaymentAccount, forKey: .hasPaymentAccount)
        try container.encode(self.hasSubscription, forKey: .hasSubscription)
        try container.encode(self.subscriptionCancelAt, forKey: .subscriptionCancelAt)
        try container.encode(self.paymentFailedAt, forKey: .paymentFailedAt)
        try container.encode(self.paymentFailedInvoiceUrl, forKey: .paymentFailedInvoiceUrl)
        try container.encode(self.monthToDate, forKey: .monthToDate)
        try container.encode(self.plans, forKey: .plans)
        try container.encode(self.apiRequestEur, forKey: .apiRequestEur)
        try container.encode(self.topUp, forKey: .topUp)
        try container.encode(self.autoTopUp, forKey: .autoTopUp)
        try container.encode(self.overdraftCapCents, forKey: .overdraftCapCents)
        try container.encode(self.overdraftCapMaxCents, forKey: .overdraftCapMaxCents)
        try container.encode(self.trialDays, forKey: .trialDays)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case plan
        case accountType
        case status
        case balanceCents
        case trialEndsAt
        case firstTopUpAt
        case lastChargedDate
        case paymentsConfigured
        case hasPaymentAccount
        case hasSubscription
        case subscriptionCancelAt
        case paymentFailedAt
        case paymentFailedInvoiceUrl
        case monthToDate
        case plans
        case apiRequestEur
        case topUp
        case autoTopUp
        case overdraftCapCents
        case overdraftCapMaxCents
        case trialDays
    }
}