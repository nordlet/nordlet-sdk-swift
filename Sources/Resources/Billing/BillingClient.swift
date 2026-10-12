import Foundation

public final class BillingClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func accountGet(request: Requests.AccountGetBillingRequest, requestOptions: RequestOptions? = nil) async throws -> AccountGetBillingResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/billing/account/get",
            body: request,
            requestOptions: requestOptions,
            responseType: AccountGetBillingResponse.self
        )
    }

    public func accountSetPlan(request: Requests.AccountSetPlanBillingRequest, requestOptions: RequestOptions? = nil) async throws -> AccountSetPlanBillingResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/billing/account/set-plan",
            body: request,
            requestOptions: requestOptions,
            responseType: AccountSetPlanBillingResponse.self
        )
    }

    public func accountSetAccountType(request: Requests.AccountSetAccountTypeBillingRequest, requestOptions: RequestOptions? = nil) async throws -> AccountSetAccountTypeBillingResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/billing/account/set-account-type",
            body: request,
            requestOptions: requestOptions,
            responseType: AccountSetAccountTypeBillingResponse.self
        )
    }

    public func accountSetAutoTopUp(request: Requests.AccountSetAutoTopUpBillingRequest, requestOptions: RequestOptions? = nil) async throws -> AccountSetAutoTopUpBillingResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/billing/account/set-auto-top-up",
            body: request,
            requestOptions: requestOptions,
            responseType: AccountSetAutoTopUpBillingResponse.self
        )
    }

    public func accountSetOverdraftCap(request: Requests.AccountSetOverdraftCapBillingRequest, requestOptions: RequestOptions? = nil) async throws -> AccountSetOverdraftCapBillingResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/billing/account/set-overdraft-cap",
            body: request,
            requestOptions: requestOptions,
            responseType: AccountSetOverdraftCapBillingResponse.self
        )
    }

    public func topupCreate(request: Requests.TopupCreateBillingRequest, requestOptions: RequestOptions? = nil) async throws -> TopupCreateBillingResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/billing/topup/create",
            body: request,
            requestOptions: requestOptions,
            responseType: TopupCreateBillingResponse.self
        )
    }

    public func topupConfirm(request: Requests.TopupConfirmBillingRequest, requestOptions: RequestOptions? = nil) async throws -> TopupConfirmBillingResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/billing/topup/confirm",
            body: request,
            requestOptions: requestOptions,
            responseType: TopupConfirmBillingResponse.self
        )
    }

    public func flatRateCreate(request: Requests.FlatRateCreateBillingRequest, requestOptions: RequestOptions? = nil) async throws -> FlatRateCreateBillingResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/billing/flat-rate/create",
            body: request,
            requestOptions: requestOptions,
            responseType: FlatRateCreateBillingResponse.self
        )
    }

    public func flatRateConfirm(request: Requests.FlatRateConfirmBillingRequest, requestOptions: RequestOptions? = nil) async throws -> FlatRateConfirmBillingResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/billing/flat-rate/confirm",
            body: request,
            requestOptions: requestOptions,
            responseType: FlatRateConfirmBillingResponse.self
        )
    }

    public func portalCreate(request: Requests.PortalCreateBillingRequest, requestOptions: RequestOptions? = nil) async throws -> PortalCreateBillingResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/billing/portal/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PortalCreateBillingResponse.self
        )
    }

    public func transactionsList(request: Requests.TransactionsListBillingRequest, requestOptions: RequestOptions? = nil) async throws -> TransactionsListBillingResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/billing/transactions/list",
            body: request,
            requestOptions: requestOptions,
            responseType: TransactionsListBillingResponse.self
        )
    }

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