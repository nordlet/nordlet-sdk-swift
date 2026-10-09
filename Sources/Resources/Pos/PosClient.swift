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

    public func shiftsOpen(request: Requests.ShiftsOpenPosRequest, requestOptions: RequestOptions? = nil) async throws -> ShiftsOpenPosResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/pos/shifts/open",
            body: request,
            requestOptions: requestOptions,
            responseType: ShiftsOpenPosResponse.self
        )
    }

    public func shiftsGet(request: Requests.ShiftsGetPosRequest, requestOptions: RequestOptions? = nil) async throws -> ShiftsGetPosResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/pos/shifts/get",
            body: request,
            requestOptions: requestOptions,
            responseType: ShiftsGetPosResponse.self
        )
    }

    public func shiftsList(request: Requests.ShiftsListPosRequest, requestOptions: RequestOptions? = nil) async throws -> ShiftsListPosResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/pos/shifts/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ShiftsListPosResponse.self
        )
    }

    public func receiptsCreate(request: Requests.ReceiptsCreatePosRequest, requestOptions: RequestOptions? = nil) async throws -> ReceiptsCreatePosResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/pos/receipts/create",
            body: request,
            requestOptions: requestOptions,
            responseType: ReceiptsCreatePosResponse.self
        )
    }

    public func receiptsList(request: Requests.ReceiptsListPosRequest, requestOptions: RequestOptions? = nil) async throws -> ReceiptsListPosResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/pos/receipts/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ReceiptsListPosResponse.self
        )
    }

    public func receiptsGet(request: Requests.ReceiptsGetPosRequest, requestOptions: RequestOptions? = nil) async throws -> ReceiptsGetPosResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/pos/receipts/get",
            body: request,
            requestOptions: requestOptions,
            responseType: ReceiptsGetPosResponse.self
        )
    }

    public func shiftsClose(request: Requests.ShiftsClosePosRequest, requestOptions: RequestOptions? = nil) async throws -> ShiftsClosePosResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/pos/shifts/close",
            body: request,
            requestOptions: requestOptions,
            responseType: ShiftsClosePosResponse.self
        )
    }
}