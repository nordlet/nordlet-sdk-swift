import Foundation

public final class BillingClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Return the signed-in user's billing account of the site named by the `x-nordlet-site` header (`app` when absent): plan, account type, status, balance, trial and payment state, the month-to-date usage of that site in the companies the user pays for with an estimate of today's charge, the plan catalogue, and the top-up, automatic top-up and overdraft settings. Each site has its own account and plan.
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

    /// Change the plan of the user's flat-rate billing account of the request's site; answers 422 when the plan is not one of that site's plans and 409 when the account type is not `flat_rate`. With a Stripe subscription and payments configured, the subscription is moved to the new plan. On the day of the change, the plan fee (without a subscription) and the storage are split by hour, each hour at the plan in force when the hour starts, and the sale invoices of the day count against the plan in force when they were made.
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

    /// Switch the user's billing account of the request's site between `flat_rate` and `per_request`; answers 422 for an account type the site does not offer (the `invoice` site has `flat_rate` only). With a Stripe subscription and payments configured, the subscription is moved to the plan's price for `flat_rate`; for `per_request` the plan is taken off the subscription, and a subscription that carried only the plan is cancelled, leaving the account without one. When Stripe refuses the change, the previous account type is restored.
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

    /// Switch automatic top-ups on or off and set their amount; answers 409 on a site without top-ups. Switching them on needs a Stripe customer, which the first card top-up creates (400 otherwise); when switched on, a top-up is charged at once if the balance is at or below zero, no payment has failed and no top-up was requested in the last 24 hours.
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

    /// Set the overdraft cap of the user's billing account: how far usage charges may take the balance below zero before the account is suspended. A suspended account whose balance is within the new cap is activated again. Answers 409 on a site without top-ups.
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

    /// Open a Stripe Checkout session for a one-time credit top-up of `amountCents` and return its URL; a Stripe customer is created for the user when there is none. `returnTo` chooses whether Checkout returns to the credits page or to the onboarding plan page, in `locale`; with `convertCompanyId` it returns to the onboarding plan page, which then converts that sandbox company to a live company. Answers 409 on a site without top-ups and 503 when online payments are not configured.
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

    /// Confirm a paid top-up Checkout session by `sessionId` and credit the account at once instead of waiting for the Stripe webhook; a session is credited only once. Answers 404 when the session is not the user's own or is not paid, and 409 on a site without top-ups.
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

    /// Start the free sandbox plan of the caller's `app` billing account: one sandbox company, free for 14 days from now, without a payment. A free sandbox that is already running keeps its end date. After `trialEndsAt` the sandbox company answers 402 until a paid plan is chosen. Answers 409 on the `invoice` site, when a paid plan is already active, and when the free sandbox of this account has already ended.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func freeSandboxStart(request: Requests.FreeSandboxStartBillingRequest, requestOptions: RequestOptions? = nil) async throws -> FreeSandboxStartBillingResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/billing/free-sandbox/start",
            body: request,
            requestOptions: requestOptions,
            responseType: FreeSandboxStartBillingResponse.self
        )
    }

    /// Open a Stripe Checkout session for a flat-rate subscription on `plan` (by default the first plan of the request's site) for the billing account of the request's site and return its URL; a Stripe customer is created for that account when it has none. The plans of the `app` site have no trial period: the first month is charged at checkout. The `invoicing` plan of the `invoice` site takes its trial days from the server setting `INVOICE_PLAN_TRIAL_DAYS` and returns to the invoice app. With `convertCompanyId` Checkout returns to the onboarding plan page, which then converts that sandbox company to a live company. Answers 422 when the plan is not one of the site's plans, 409 when the site's flat-rate subscription is already active and 503 when online payments are not configured, the plan has no price, or the Invoicing trial is not set.
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

    /// Confirm a completed flat-rate Checkout session by `sessionId`: the billing account of the site of the session's plan becomes `flat_rate` on that plan with status `active` and the subscription attached, unless the Stripe webhook already did this. Answers 404 when the session is not the user's own or not completed.
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

    /// Cancel the Stripe subscription of the user's billing account of the request's site at the end of the period already paid: the plan stays active until `subscriptionCancelAt`, and Stripe then ends the subscription, which its `customer.subscription.deleted` webhook records. Answers 503 when online payments are not configured and 409 when the account has no subscription.
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

    /// Open a Stripe customer portal session for the billing account of the request's site that returns to that site's credits page (the plan page on the `invoice` site) in `locale`, and return its URL. Answers 503 when online payments are not configured and 400 when the account has no Stripe customer yet.
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

    /// List the newest credit transactions of the user's billing account of the request's site, up to `limit`: trial grants, top-ups, usage charges, activations and adjustments, each with the balance after it.
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

    /// List the daily usage records of the request's site in the companies the user pays for, from `from` to `to`: one row per company, date and metric (API requests, OCR pages, file storage bytes, database bytes, sale invoices). Requests, OCR pages and invoices count on the site the request came from; storage counts on the `app` site.
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