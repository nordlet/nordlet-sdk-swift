import Foundation

public final class InventoryClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func postV1InventorySettingsGet(request: Requests.PostV1InventorySettingsGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1InventorySettingsGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/settings/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1InventorySettingsGetResponse.self
        )
    }

    public func postV1InventorySettingsUpdate(request: Requests.PostV1InventorySettingsUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1InventorySettingsUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/settings/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1InventorySettingsUpdateResponse.self
        )
    }

    public func postV1InventoryWarehousesCreate(request: Requests.PostV1InventoryWarehousesCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1InventoryWarehousesCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/warehouses/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1InventoryWarehousesCreateResponse.self
        )
    }

    public func postV1InventoryWarehousesList(request: Requests.PostV1InventoryWarehousesListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1InventoryWarehousesListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/warehouses/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1InventoryWarehousesListResponse.self
        )
    }

    public func postV1InventoryStockReceive(request: Requests.PostV1InventoryStockReceiveRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1InventoryStockReceiveResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/stock/receive",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1InventoryStockReceiveResponse.self
        )
    }

    public func postV1InventoryStockWriteOff(request: Requests.PostV1InventoryStockWriteOffRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1InventoryStockWriteOffResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/stock/write-off",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1InventoryStockWriteOffResponse.self
        )
    }

    public func postV1InventoryStockTransfer(request: Requests.PostV1InventoryStockTransferRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1InventoryStockTransferResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/stock/transfer",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1InventoryStockTransferResponse.self
        )
    }

    public func postV1InventoryStockTake(request: Requests.PostV1InventoryStockTakeRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1InventoryStockTakeResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/stock/take",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1InventoryStockTakeResponse.self
        )
    }

    public func postV1InventoryStockLevels(request: Requests.PostV1InventoryStockLevelsRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1InventoryStockLevelsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/stock/levels",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1InventoryStockLevelsResponse.self
        )
    }

    public func postV1InventoryStockMovementsList(request: Requests.PostV1InventoryStockMovementsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1InventoryStockMovementsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/stock/movements/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1InventoryStockMovementsListResponse.self
        )
    }
}