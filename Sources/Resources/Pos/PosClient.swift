import Foundation

public final class PosClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func postV1PosDevicesCreate(request: Requests.PostV1PosDevicesCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PosDevicesCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/pos/devices/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PosDevicesCreateResponse.self
        )
    }

    public func postV1PosDevicesUpdate(request: Requests.PostV1PosDevicesUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PosDevicesUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/pos/devices/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PosDevicesUpdateResponse.self
        )
    }

    public func postV1PosDevicesList(request: Requests.PostV1PosDevicesListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PosDevicesListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/pos/devices/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PosDevicesListResponse.self
        )
    }

    public func postV1PosReportsCreate(request: Requests.PostV1PosReportsCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PosReportsCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/pos/reports/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PosReportsCreateResponse.self
        )
    }

    public func postV1PosReportsGet(request: Requests.PostV1PosReportsGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PosReportsGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/pos/reports/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PosReportsGetResponse.self
        )
    }

    public func postV1PosReportsList(request: Requests.PostV1PosReportsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PosReportsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/pos/reports/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PosReportsListResponse.self
        )
    }
}