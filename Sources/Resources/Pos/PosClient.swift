import Foundation

public final class PosClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func devicesCreate(request: Requests.DevicesCreatePosRequest, requestOptions: RequestOptions? = nil) async throws -> DevicesCreatePosResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/pos/devices/create",
            body: request,
            requestOptions: requestOptions,
            responseType: DevicesCreatePosResponse.self
        )
    }

    public func devicesUpdate(request: Requests.DevicesUpdatePosRequest, requestOptions: RequestOptions? = nil) async throws -> DevicesUpdatePosResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/pos/devices/update",
            body: request,
            requestOptions: requestOptions,
            responseType: DevicesUpdatePosResponse.self
        )
    }

    public func devicesList(request: Requests.DevicesListPosRequest, requestOptions: RequestOptions? = nil) async throws -> DevicesListPosResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/pos/devices/list",
            body: request,
            requestOptions: requestOptions,
            responseType: DevicesListPosResponse.self
        )
    }

    public func reportsCreate(request: Requests.ReportsCreatePosRequest, requestOptions: RequestOptions? = nil) async throws -> ReportsCreatePosResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/pos/reports/create",
            body: request,
            requestOptions: requestOptions,
            responseType: ReportsCreatePosResponse.self
        )
    }

    public func reportsGet(request: Requests.ReportsGetPosRequest, requestOptions: RequestOptions? = nil) async throws -> ReportsGetPosResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/pos/reports/get",
            body: request,
            requestOptions: requestOptions,
            responseType: ReportsGetPosResponse.self
        )
    }

    public func reportsList(request: Requests.ReportsListPosRequest, requestOptions: RequestOptions? = nil) async throws -> ReportsListPosResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/pos/reports/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ReportsListPosResponse.self
        )
    }
}