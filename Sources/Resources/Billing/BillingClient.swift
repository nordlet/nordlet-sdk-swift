import Foundation

public final class BillingClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Return the signed-in user's billing account: plan, account type, status, balance, trial and payment state, the month-to-date usage of the companies the user pays for with an estimate of today's charge, the plan catalogue, and the top-up, automatic top-up and overdraft settings.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func accountGet(request: Requests.AccountGetBillingRequest, requestOptions: RequestOptions? = nil) async throws -> AccountGetBillingResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/billing/account/get",
            body: request,
            requestOptions: requestOptions,
            responseType: AccountGetBillingResponse.self
        )
    }

    /// Change the plan of the user's flat-rate billing account; answers 409 when the account type is not `flat_rate`. With a Stripe subscription and payments configured, the subscription is moved to the new plan.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func accountSetPlan(request: Requests.AccountSetPlanBillingRequest, requestOptions: RequestOptions? = nil) async throws -> AccountSetPlanBillingResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/billing/account/set-plan",
            body: request,
            requestOptions: requestOptions,
            responseType: AccountSetPlanBillingResponse.self
        )
    }

    /// Switch the user's billing account between `flat_rate` and `per_request`. With a Stripe subscription and payments configured, the subscription is moved to the plan's price for `flat_rate`; for `per_request` the plan is taken off the subscription, and a subscription that carried only the plan is cancelled, leaving the account without one. When Stripe refuses the change, the previous account type is restored.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func accountSetAccountType(request: Requests.AccountSetAccountTypeBillingRequest, requestOptions: RequestOptions? = nil) async throws -> AccountSetAccountTypeBillingResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/billing/account/set-account-type",
            body: request,
            requestOptions: requestOptions,
            responseType: AccountSetAccountTypeBillingResponse.self
        )
    }

    /// Switch automatic top-ups on or off and set their amount. Switching them on needs a Stripe customer, which the first card top-up creates (400 otherwise); when switched on, a top-up is charged at once if the balance is at or below zero, no payment has failed and no top-up was requested in the last 24 hours.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func accountSetAutoTopUp(request: Requests.AccountSetAutoTopUpBillingRequest, requestOptions: RequestOptions? = nil) async throws -> AccountSetAutoTopUpBillingResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/billing/account/set-auto-top-up",
            body: request,
            requestOptions: requestOptions,
            responseType: AccountSetAutoTopUpBillingResponse.self
        )
    }

    /// Set the overdraft cap of the user's billing account: how far usage charges may take the balance below zero before the account is suspended. A suspended account whose balance is within the new cap is activated again.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func accountSetOverdraftCap(request: Requests.AccountSetOverdraftCapBillingRequest, requestOptions: RequestOptions? = nil) async throws -> AccountSetOverdraftCapBillingResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/billing/account/set-overdraft-cap",
            body: request,
            requestOptions: requestOptions,
            responseType: AccountSetOverdraftCapBillingResponse.self
        )
    }

    /// Open a Stripe Checkout session for a one-time credit top-up of `amountCents` and return its URL; a Stripe customer is created for the user when there is none. `returnTo` chooses whether Checkout returns to the credits page or to the onboarding plan page, in `locale`. Answers 503 when online payments are not configured.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func topupCreate(request: Requests.TopupCreateBillingRequest, requestOptions: RequestOptions? = nil) async throws -> TopupCreateBillingResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/billing/topup/create",
            body: request,
            requestOptions: requestOptions,
            responseType: TopupCreateBillingResponse.self
        )
    }

    /// Confirm a paid top-up Checkout session by `sessionId` and credit the account at once instead of waiting for the Stripe webhook; a session is credited only once. Answers 404 when the session is not the user's own or is not paid.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func topupConfirm(request: Requests.TopupConfirmBillingRequest, requestOptions: RequestOptions? = nil) async throws -> TopupConfirmBillingResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/billing/topup/confirm",
            body: request,
            requestOptions: requestOptions,
            responseType: TopupConfirmBillingResponse.self
        )
    }

    /// Open a Stripe Checkout session for a flat-rate subscription on `plan`, with the trial period of `trialDays` days, and return its URL; a Stripe customer is created for the user when there is none. The `invoicing` plan of the invoice tool takes its trial days from the server setting `INVOICE_PLAN_TRIAL_DAYS` and returns to the invoice app. Answers 409 when a flat-rate subscription is already active and 503 when online payments are not configured, the plan has no price, or the Invoicing trial is not set.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func flatRateCreate(request: Requests.FlatRateCreateBillingRequest, requestOptions: RequestOptions? = nil) async throws -> FlatRateCreateBillingResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/billing/flat-rate/create",
            body: request,
            requestOptions: requestOptions,
            responseType: FlatRateCreateBillingResponse.self
        )
    }

    /// Confirm a completed flat-rate Checkout session by `sessionId`: the account becomes `flat_rate` on the session's plan with status `active` and the subscription attached, unless the Stripe webhook already did this. Answers 404 when the session is not the user's own or not completed.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func flatRateConfirm(request: Requests.FlatRateConfirmBillingRequest, requestOptions: RequestOptions? = nil) async throws -> FlatRateConfirmBillingResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/billing/flat-rate/confirm",
            body: request,
            requestOptions: requestOptions,
            responseType: FlatRateConfirmBillingResponse.self
        )
    }

    /// Cancel the user's Stripe subscription at the end of the period already paid: the plan stays active until `subscriptionCancelAt`, and Stripe then ends the subscription, which its `customer.subscription.deleted` webhook records. Answers 503 when online payments are not configured and 409 when the account has no subscription.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func subscriptionCancel(request: Requests.SubscriptionCancelBillingRequest, requestOptions: RequestOptions? = nil) async throws -> SubscriptionCancelBillingResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/billing/subscription/cancel",
            body: request,
            requestOptions: requestOptions,
            responseType: SubscriptionCancelBillingResponse.self
        )
    }

    /// Open a Stripe customer portal session that returns to the credits page in `locale`, and return its URL. Answers 503 when online payments are not configured and 400 when the user has no Stripe customer yet.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func portalCreate(request: Requests.PortalCreateBillingRequest, requestOptions: RequestOptions? = nil) async throws -> PortalCreateBillingResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/billing/portal/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PortalCreateBillingResponse.self
        )
    }

    /// List the newest credit transactions of the user's billing account, up to `limit`: trial grants, top-ups, usage charges, activations and adjustments, each with the balance after it.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func transactionsList(request: Requests.TransactionsListBillingRequest, requestOptions: RequestOptions? = nil) async throws -> TransactionsListBillingResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/billing/transactions/list",
            body: request,
            requestOptions: requestOptions,
            responseType: TransactionsListBillingResponse.self
        )
    }

    /// List the daily usage records of the companies the user pays for, from `from` to `to`: one row per company, date and metric (API requests, OCR pages, file storage bytes, database bytes, sale invoices).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func usageList(request: Requests.UsageListBillingRequest, requestOptions: RequestOptions? = nil) async throws -> UsageListBillingResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/billing/usage/list",
            body: request,
            requestOptions: requestOptions,
            responseType: UsageListBillingResponse.self
        )
    }
}