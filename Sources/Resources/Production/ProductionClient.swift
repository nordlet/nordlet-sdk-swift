import Foundation

public final class ProductionClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func workCentersCreate(request: Requests.WorkCentersCreateProductionRequest, requestOptions: RequestOptions? = nil) async throws -> WorkCentersCreateProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/work-centers/create",
            body: request,
            requestOptions: requestOptions,
            responseType: WorkCentersCreateProductionResponse.self
        )
    }

    public func workCentersUpdate(request: Requests.WorkCentersUpdateProductionRequest, requestOptions: RequestOptions? = nil) async throws -> WorkCentersUpdateProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/work-centers/update",
            body: request,
            requestOptions: requestOptions,
            responseType: WorkCentersUpdateProductionResponse.self
        )
    }

    public func workCentersList(request: Requests.WorkCentersListProductionRequest, requestOptions: RequestOptions? = nil) async throws -> WorkCentersListProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/work-centers/list",
            body: request,
            requestOptions: requestOptions,
            responseType: WorkCentersListProductionResponse.self
        )
    }

    public func routingsCreate(request: Requests.RoutingsCreateProductionRequest, requestOptions: RequestOptions? = nil) async throws -> RoutingsCreateProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/routings/create",
            body: request,
            requestOptions: requestOptions,
            responseType: RoutingsCreateProductionResponse.self
        )
    }

    public func routingsGet(request: Requests.RoutingsGetProductionRequest, requestOptions: RequestOptions? = nil) async throws -> RoutingsGetProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/routings/get",
            body: request,
            requestOptions: requestOptions,
            responseType: RoutingsGetProductionResponse.self
        )
    }

    public func routingsList(request: Requests.RoutingsListProductionRequest, requestOptions: RequestOptions? = nil) async throws -> RoutingsListProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/routings/list",
            body: request,
            requestOptions: requestOptions,
            responseType: RoutingsListProductionResponse.self
        )
    }

    public func maintenanceCreate(request: Requests.MaintenanceCreateProductionRequest, requestOptions: RequestOptions? = nil) async throws -> MaintenanceCreateProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/maintenance/create",
            body: request,
            requestOptions: requestOptions,
            responseType: MaintenanceCreateProductionResponse.self
        )
    }

    public func maintenanceComplete(request: Requests.MaintenanceCompleteProductionRequest, requestOptions: RequestOptions? = nil) async throws -> MaintenanceCompleteProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/maintenance/complete",
            body: request,
            requestOptions: requestOptions,
            responseType: MaintenanceCompleteProductionResponse.self
        )
    }

    public func maintenanceCancel(request: Requests.MaintenanceCancelProductionRequest, requestOptions: RequestOptions? = nil) async throws -> MaintenanceCancelProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/maintenance/cancel",
            body: request,
            requestOptions: requestOptions,
            responseType: MaintenanceCancelProductionResponse.self
        )
    }

    public func maintenanceList(request: Requests.MaintenanceListProductionRequest, requestOptions: RequestOptions? = nil) async throws -> MaintenanceListProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/maintenance/list",
            body: request,
            requestOptions: requestOptions,
            responseType: MaintenanceListProductionResponse.self
        )
    }

    public func bomsCreate(request: Requests.BomsCreateProductionRequest, requestOptions: RequestOptions? = nil) async throws -> BomsCreateProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/boms/create",
            body: request,
            requestOptions: requestOptions,
            responseType: BomsCreateProductionResponse.self
        )
    }

    public func bomsGet(request: Requests.BomsGetProductionRequest, requestOptions: RequestOptions? = nil) async throws -> BomsGetProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/boms/get",
            body: request,
            requestOptions: requestOptions,
            responseType: BomsGetProductionResponse.self
        )
    }

    public func bomsList(request: Requests.BomsListProductionRequest, requestOptions: RequestOptions? = nil) async throws -> BomsListProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/boms/list",
            body: request,
            requestOptions: requestOptions,
            responseType: BomsListProductionResponse.self
        )
    }

    public func ordersCreate(request: Requests.OrdersCreateProductionRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersCreateProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/orders/create",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersCreateProductionResponse.self
        )
    }

    public func ordersRecordOperation(request: Requests.OrdersRecordOperationProductionRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersRecordOperationProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/orders/record-operation",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersRecordOperationProductionResponse.self
        )
    }

    public func qualityChecksAdd(request: Requests.QualityChecksAddProductionRequest, requestOptions: RequestOptions? = nil) async throws -> QualityChecksAddProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/quality-checks/add",
            body: request,
            requestOptions: requestOptions,
            responseType: QualityChecksAddProductionResponse.self
        )
    }

    public func qualityChecksRecord(request: Requests.QualityChecksRecordProductionRequest, requestOptions: RequestOptions? = nil) async throws -> QualityChecksRecordProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/quality-checks/record",
            body: request,
            requestOptions: requestOptions,
            responseType: QualityChecksRecordProductionResponse.self
        )
    }

    public func qualityChecksList(request: Requests.QualityChecksListProductionRequest, requestOptions: RequestOptions? = nil) async throws -> QualityChecksListProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/quality-checks/list",
            body: request,
            requestOptions: requestOptions,
            responseType: QualityChecksListProductionResponse.self
        )
    }

    public func ordersComplete(request: Requests.OrdersCompleteProductionRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersCompleteProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/orders/complete",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersCompleteProductionResponse.self
        )
    }

    public func ordersGet(request: Requests.OrdersGetProductionRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersGetProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/orders/get",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersGetProductionResponse.self
        )
    }

    public func ordersList(request: Requests.OrdersListProductionRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersListProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/orders/list",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersListProductionResponse.self
        )
    }
}