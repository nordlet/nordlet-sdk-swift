import Foundation

public final class InventoryClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func settingsGet(request: Requests.SettingsGetInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> SettingsGetInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/settings/get",
            body: request,
            requestOptions: requestOptions,
            responseType: SettingsGetInventoryResponse.self
        )
    }

    public func settingsUpdate(request: Requests.SettingsUpdateInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> SettingsUpdateInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/settings/update",
            body: request,
            requestOptions: requestOptions,
            responseType: SettingsUpdateInventoryResponse.self
        )
    }

    public func warehousesCreate(request: Requests.WarehousesCreateInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> WarehousesCreateInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/warehouses/create",
            body: request,
            requestOptions: requestOptions,
            responseType: WarehousesCreateInventoryResponse.self
        )
    }

    public func warehousesList(request: Requests.WarehousesListInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> WarehousesListInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/warehouses/list",
            body: request,
            requestOptions: requestOptions,
            responseType: WarehousesListInventoryResponse.self
        )
    }

    public func warehousesUpdate(request: Requests.WarehousesUpdateInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> WarehousesUpdateInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/warehouses/update",
            body: request,
            requestOptions: requestOptions,
            responseType: WarehousesUpdateInventoryResponse.self
        )
    }

    public func stockReceive(request: Requests.StockReceiveInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> StockReceiveInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/stock/receive",
            body: request,
            requestOptions: requestOptions,
            responseType: StockReceiveInventoryResponse.self
        )
    }

    public func stockWriteOff(request: Requests.StockWriteOffInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> StockWriteOffInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/stock/write-off",
            body: request,
            requestOptions: requestOptions,
            responseType: StockWriteOffInventoryResponse.self
        )
    }

    public func stockTransfer(request: Requests.StockTransferInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> StockTransferInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/stock/transfer",
            body: request,
            requestOptions: requestOptions,
            responseType: StockTransferInventoryResponse.self
        )
    }

    public func stockTake(request: Requests.StockTakeInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> StockTakeInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/stock/take",
            body: request,
            requestOptions: requestOptions,
            responseType: StockTakeInventoryResponse.self
        )
    }

    public func stockLevels(request: Requests.StockLevelsInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> StockLevelsInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/stock/levels",
            body: request,
            requestOptions: requestOptions,
            responseType: StockLevelsInventoryResponse.self
        )
    }

    public func stockMovementsList(request: Requests.StockMovementsListInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> StockMovementsListInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/stock/movements/list",
            body: request,
            requestOptions: requestOptions,
            responseType: StockMovementsListInventoryResponse.self
        )
    }

    public func lotsList(request: Requests.LotsListInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> LotsListInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/lots/list",
            body: request,
            requestOptions: requestOptions,
            responseType: LotsListInventoryResponse.self
        )
    }

    public func lotsGet(request: Requests.LotsGetInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> LotsGetInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/lots/get",
            body: request,
            requestOptions: requestOptions,
            responseType: LotsGetInventoryResponse.self
        )
    }

    public func lotsUpdate(request: Requests.LotsUpdateInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> LotsUpdateInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/lots/update",
            body: request,
            requestOptions: requestOptions,
            responseType: LotsUpdateInventoryResponse.self
        )
    }

    public func landedCostsCreate(request: Requests.LandedCostsCreateInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> LandedCostsCreateInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/landed-costs/create",
            body: request,
            requestOptions: requestOptions,
            responseType: LandedCostsCreateInventoryResponse.self
        )
    }

    public func landedCostsGet(request: Requests.LandedCostsGetInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> LandedCostsGetInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/landed-costs/get",
            body: request,
            requestOptions: requestOptions,
            responseType: LandedCostsGetInventoryResponse.self
        )
    }

    public func landedCostsList(request: Requests.LandedCostsListInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> LandedCostsListInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/landed-costs/list",
            body: request,
            requestOptions: requestOptions,
            responseType: LandedCostsListInventoryResponse.self
        )
    }

    public func reorderRulesCreate(request: Requests.ReorderRulesCreateInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> ReorderRulesCreateInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/reorder-rules/create",
            body: request,
            requestOptions: requestOptions,
            responseType: ReorderRulesCreateInventoryResponse.self
        )
    }

    public func reorderRulesUpdate(request: Requests.ReorderRulesUpdateInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> ReorderRulesUpdateInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/reorder-rules/update",
            body: request,
            requestOptions: requestOptions,
            responseType: ReorderRulesUpdateInventoryResponse.self
        )
    }

    public func reorderRulesDelete(request: Requests.ReorderRulesDeleteInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> ReorderRulesDeleteInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/reorder-rules/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: ReorderRulesDeleteInventoryResponse.self
        )
    }

    public func reorderRulesList(request: Requests.ReorderRulesListInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> ReorderRulesListInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/reorder-rules/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ReorderRulesListInventoryResponse.self
        )
    }

    public func reorderRulesCheck(request: Requests.ReorderRulesCheckInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> ReorderRulesCheckInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/reorder-rules/check",
            body: request,
            requestOptions: requestOptions,
            responseType: ReorderRulesCheckInventoryResponse.self
        )
    }
}