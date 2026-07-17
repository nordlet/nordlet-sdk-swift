import Foundation

public final class EcommerceClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func postV1EcommerceOrdersCreate(request: Requests.PostV1EcommerceOrdersCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1EcommerceOrdersCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ecommerce/orders/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1EcommerceOrdersCreateResponse.self
        )
    }

    public func postV1EcommerceOrdersGet(request: Requests.PostV1EcommerceOrdersGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1EcommerceOrdersGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ecommerce/orders/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1EcommerceOrdersGetResponse.self
        )
    }

    public func postV1EcommerceOrdersList(request: Requests.PostV1EcommerceOrdersListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1EcommerceOrdersListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ecommerce/orders/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1EcommerceOrdersListResponse.self
        )
    }

    public func postV1EcommerceOrdersReserve(request: Requests.PostV1EcommerceOrdersReserveRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1EcommerceOrdersReserveResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ecommerce/orders/reserve",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1EcommerceOrdersReserveResponse.self
        )
    }

    public func postV1EcommerceOrdersFulfill(request: Requests.PostV1EcommerceOrdersFulfillRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1EcommerceOrdersFulfillResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ecommerce/orders/fulfill",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1EcommerceOrdersFulfillResponse.self
        )
    }

    public func postV1EcommerceOrdersCancel(request: Requests.PostV1EcommerceOrdersCancelRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1EcommerceOrdersCancelResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ecommerce/orders/cancel",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1EcommerceOrdersCancelResponse.self
        )
    }

    public func postV1EcommerceProductsList(request: Requests.PostV1EcommerceProductsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1EcommerceProductsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ecommerce/products/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1EcommerceProductsListResponse.self
        )
    }

    public func postV1EcommerceStockList(request: Requests.PostV1EcommerceStockListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1EcommerceStockListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ecommerce/stock/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1EcommerceStockListResponse.self
        )
    }
}