import Foundation

public final class CashClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func postV1CashOrdersCreate(request: Requests.PostV1CashOrdersCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CashOrdersCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/cash/orders/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CashOrdersCreateResponse.self
        )
    }

    public func postV1CashOrdersGet(request: Requests.PostV1CashOrdersGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CashOrdersGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/cash/orders/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CashOrdersGetResponse.self
        )
    }

    public func postV1CashOrdersList(request: Requests.PostV1CashOrdersListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CashOrdersListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/cash/orders/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CashOrdersListResponse.self
        )
    }

    public func postV1CashBalance(request: Requests.PostV1CashBalanceRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CashBalanceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/cash/balance",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CashBalanceResponse.self
        )
    }

    public func postV1CashAdvanceHoldersBalances(request: Requests.PostV1CashAdvanceHoldersBalancesRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CashAdvanceHoldersBalancesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/cash/advance-holders/balances",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CashAdvanceHoldersBalancesResponse.self
        )
    }
}