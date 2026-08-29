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

    public func postV1InventoryLotsList(request: Requests.PostV1InventoryLotsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1InventoryLotsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/lots/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1InventoryLotsListResponse.self
        )
    }

    public func postV1InventoryLotsGet(request: Requests.PostV1InventoryLotsGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1InventoryLotsGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/lots/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1InventoryLotsGetResponse.self
        )
    }

    public func postV1InventoryLotsUpdate(request: Requests.PostV1InventoryLotsUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1InventoryLotsUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/lots/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1InventoryLotsUpdateResponse.self
        )
    }

    public func postV1InventoryLandedCostsCreate(request: Requests.PostV1InventoryLandedCostsCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1InventoryLandedCostsCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/landed-costs/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1InventoryLandedCostsCreateResponse.self
        )
    }

    public func postV1InventoryLandedCostsGet(request: Requests.PostV1InventoryLandedCostsGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1InventoryLandedCostsGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/landed-costs/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1InventoryLandedCostsGetResponse.self
        )
    }

    public func postV1InventoryLandedCostsList(request: Requests.PostV1InventoryLandedCostsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1InventoryLandedCostsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/landed-costs/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1InventoryLandedCostsListResponse.self
        )
    }

    public func postV1InventoryReorderRulesCreate(request: Requests.PostV1InventoryReorderRulesCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1InventoryReorderRulesCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/reorder-rules/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1InventoryReorderRulesCreateResponse.self
        )
    }

    public func postV1InventoryReorderRulesUpdate(request: Requests.PostV1InventoryReorderRulesUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1InventoryReorderRulesUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/reorder-rules/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1InventoryReorderRulesUpdateResponse.self
        )
    }

    public func postV1InventoryReorderRulesDelete(request: Requests.PostV1InventoryReorderRulesDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1InventoryReorderRulesDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/reorder-rules/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1InventoryReorderRulesDeleteResponse.self
        )
    }

    public func postV1InventoryReorderRulesList(request: Requests.PostV1InventoryReorderRulesListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1InventoryReorderRulesListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/reorder-rules/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1InventoryReorderRulesListResponse.self
        )
    }

    public func postV1InventoryReorderRulesCheck(request: Requests.PostV1InventoryReorderRulesCheckRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1InventoryReorderRulesCheckResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/reorder-rules/check",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1InventoryReorderRulesCheckResponse.self
        )
    }
}