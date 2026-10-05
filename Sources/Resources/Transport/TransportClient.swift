import Foundation

public final class TransportClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func waybillsCreate(request: Requests.WaybillsCreateTransportRequest, requestOptions: RequestOptions? = nil) async throws -> WaybillsCreateTransportResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/transport/waybills/create",
            body: request,
            requestOptions: requestOptions,
            responseType: WaybillsCreateTransportResponse.self
        )
    }

    public func waybillsUpdate(request: Requests.WaybillsUpdateTransportRequest, requestOptions: RequestOptions? = nil) async throws -> WaybillsUpdateTransportResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/transport/waybills/update",
            body: request,
            requestOptions: requestOptions,
            responseType: WaybillsUpdateTransportResponse.self
        )
    }

    public func waybillsIssue(request: Requests.WaybillsIssueTransportRequest, requestOptions: RequestOptions? = nil) async throws -> WaybillsIssueTransportResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/transport/waybills/issue",
            body: request,
            requestOptions: requestOptions,
            responseType: WaybillsIssueTransportResponse.self
        )
    }

    public func waybillsCancel(request: Requests.WaybillsCancelTransportRequest, requestOptions: RequestOptions? = nil) async throws -> WaybillsCancelTransportResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/transport/waybills/cancel",
            body: request,
            requestOptions: requestOptions,
            responseType: WaybillsCancelTransportResponse.self
        )
    }

    public func waybillsGet(request: Requests.WaybillsGetTransportRequest, requestOptions: RequestOptions? = nil) async throws -> WaybillsGetTransportResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/transport/waybills/get",
            body: request,
            requestOptions: requestOptions,
            responseType: WaybillsGetTransportResponse.self
        )
    }

    public func waybillsList(request: Requests.WaybillsListTransportRequest, requestOptions: RequestOptions? = nil) async throws -> WaybillsListTransportResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/transport/waybills/list",
            body: request,
            requestOptions: requestOptions,
            responseType: WaybillsListTransportResponse.self
        )
    }
}