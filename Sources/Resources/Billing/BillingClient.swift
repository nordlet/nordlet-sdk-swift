import Foundation

public final class BillingClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func postV1BillingAccountGet(request: Requests.PostV1BillingAccountGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1BillingAccountGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/billing/account/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1BillingAccountGetResponse.self
        )
    }

    public func postV1BillingAccountSetPlan(request: Requests.PostV1BillingAccountSetPlanRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1BillingAccountSetPlanResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/billing/account/set-plan",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1BillingAccountSetPlanResponse.self
        )
    }

    public func postV1BillingTopupCreate(request: Requests.PostV1BillingTopupCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1BillingTopupCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/billing/topup/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1BillingTopupCreateResponse.self
        )
    }

    public func postV1BillingTransactionsList(request: Requests.PostV1BillingTransactionsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1BillingTransactionsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/billing/transactions/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1BillingTransactionsListResponse.self
        )
    }

    public func postV1BillingUsageList(request: Requests.PostV1BillingUsageListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1BillingUsageListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/billing/usage/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1BillingUsageListResponse.self
        )
    }
}