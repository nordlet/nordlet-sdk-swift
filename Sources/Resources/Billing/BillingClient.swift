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

    public func topupCreate(request: Requests.TopupCreateBillingRequest, requestOptions: RequestOptions? = nil) async throws -> TopupCreateBillingResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/billing/topup/create",
            body: request,
            requestOptions: requestOptions,
            responseType: TopupCreateBillingResponse.self
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