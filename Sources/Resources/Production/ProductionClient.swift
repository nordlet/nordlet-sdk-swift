import Foundation

public final class ProductionClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func postV1ProductionBomsCreate(request: Requests.PostV1ProductionBomsCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProductionBomsCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/boms/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProductionBomsCreateResponse.self
        )
    }

    public func postV1ProductionBomsGet(request: Requests.PostV1ProductionBomsGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProductionBomsGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/boms/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProductionBomsGetResponse.self
        )
    }

    public func postV1ProductionBomsList(request: Requests.PostV1ProductionBomsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProductionBomsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/boms/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProductionBomsListResponse.self
        )
    }

    public func postV1ProductionOrdersCreate(request: Requests.PostV1ProductionOrdersCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProductionOrdersCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/orders/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProductionOrdersCreateResponse.self
        )
    }

    public func postV1ProductionOrdersComplete(request: Requests.PostV1ProductionOrdersCompleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProductionOrdersCompleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/orders/complete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProductionOrdersCompleteResponse.self
        )
    }

    public func postV1ProductionOrdersGet(request: Requests.PostV1ProductionOrdersGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProductionOrdersGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/orders/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProductionOrdersGetResponse.self
        )
    }

    public func postV1ProductionOrdersList(request: Requests.PostV1ProductionOrdersListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProductionOrdersListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/orders/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProductionOrdersListResponse.self
        )
    }
}