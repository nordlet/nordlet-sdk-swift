import Foundation

public final class TransportClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func postV1TransportWaybillsCreate(request: Requests.PostV1TransportWaybillsCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1TransportWaybillsCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/transport/waybills/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1TransportWaybillsCreateResponse.self
        )
    }

    public func postV1TransportWaybillsUpdate(request: Requests.PostV1TransportWaybillsUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1TransportWaybillsUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/transport/waybills/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1TransportWaybillsUpdateResponse.self
        )
    }

    public func postV1TransportWaybillsIssue(request: Requests.PostV1TransportWaybillsIssueRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1TransportWaybillsIssueResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/transport/waybills/issue",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1TransportWaybillsIssueResponse.self
        )
    }

    public func postV1TransportWaybillsCancel(request: Requests.PostV1TransportWaybillsCancelRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1TransportWaybillsCancelResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/transport/waybills/cancel",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1TransportWaybillsCancelResponse.self
        )
    }

    public func postV1TransportWaybillsGet(request: Requests.PostV1TransportWaybillsGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1TransportWaybillsGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/transport/waybills/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1TransportWaybillsGetResponse.self
        )
    }

    public func postV1TransportWaybillsList(request: Requests.PostV1TransportWaybillsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1TransportWaybillsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/transport/waybills/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1TransportWaybillsListResponse.self
        )
    }
}