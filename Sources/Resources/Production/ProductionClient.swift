import Foundation

public final class ProductionClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Create a work center with its `costPerHour`. `costAccountCode` must be a postable account of the chart (422 otherwise); when a production order completes, the labor cost of the operations run on this center is credited to it instead of the `production.laborApplied` posting rule account. A duplicate `code` is refused with 409.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func workCentersCreate(request: Requests.WorkCentersCreateProductionRequest, requestOptions: RequestOptions? = nil) async throws -> WorkCentersCreateProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/work-centers/create",
            body: request,
            requestOptions: requestOptions,
            responseType: WorkCentersCreateProductionResponse.self
        )
    }

    /// Change a work center; only the fields sent are changed. `costAccountCode` must be a postable account of the chart (422 otherwise); a `code` already used by another work center is refused with 409.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func workCentersUpdate(request: Requests.WorkCentersUpdateProductionRequest, requestOptions: RequestOptions? = nil) async throws -> WorkCentersUpdateProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/work-centers/update",
            body: request,
            requestOptions: requestOptions,
            responseType: WorkCentersUpdateProductionResponse.self
        )
    }

    /// List work centers. `nextMaintenanceDate` is the latest completed maintenance date (the creation date when there is none) plus `maintenanceIntervalDays`, null without an interval. Filterable by `code`, `name` and `isActive`; sortable by `code`, `name` and `createdAt`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func workCentersList(request: Requests.WorkCentersListProductionRequest, requestOptions: RequestOptions? = nil) async throws -> WorkCentersListProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/work-centers/list",
            body: request,
            requestOptions: requestOptions,
            responseType: WorkCentersListProductionResponse.self
        )
    }

    /// Create a routing with its operations: `sequence`, work center, `setupMinutes`, `runMinutesPerUnit` and an optional `qualityCheckName` that becomes a pending quality check on every production order using the routing. Operation sequences must be unique (422); a duplicate `code` is refused with 409.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func routingsCreate(request: Requests.RoutingsCreateProductionRequest, requestOptions: RequestOptions? = nil) async throws -> RoutingsCreateProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/routings/create",
            body: request,
            requestOptions: requestOptions,
            responseType: RoutingsCreateProductionResponse.self
        )
    }

    /// Return one routing with its operations in sequence order.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func routingsGet(request: Requests.RoutingsGetProductionRequest, requestOptions: RequestOptions? = nil) async throws -> RoutingsGetProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/routings/get",
            body: request,
            requestOptions: requestOptions,
            responseType: RoutingsGetProductionResponse.self
        )
    }

    /// List routings without their operations. Filterable by `code`, `name` and `isActive`; sortable by `code`, `name` and `createdAt`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func routingsList(request: Requests.RoutingsListProductionRequest, requestOptions: RequestOptions? = nil) async throws -> RoutingsListProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/routings/list",
            body: request,
            requestOptions: requestOptions,
            responseType: RoutingsListProductionResponse.self
        )
    }

    /// Record a `preventive` or `corrective` maintenance planned for a work center on `plannedDate`; it starts as `planned`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func maintenanceCreate(request: Requests.MaintenanceCreateProductionRequest, requestOptions: RequestOptions? = nil) async throws -> MaintenanceCreateProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/maintenance/create",
            body: request,
            requestOptions: requestOptions,
            responseType: MaintenanceCreateProductionResponse.self
        )
    }

    /// Mark a `planned` maintenance as completed on `completedDate`, with optional `downtimeHours` and `cost` (409 when it is already completed or cancelled). The work center's `nextMaintenanceDate` is then counted from the latest completed maintenance date.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func maintenanceComplete(request: Requests.MaintenanceCompleteProductionRequest, requestOptions: RequestOptions? = nil) async throws -> MaintenanceCompleteProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/maintenance/complete",
            body: request,
            requestOptions: requestOptions,
            responseType: MaintenanceCompleteProductionResponse.self
        )
    }

    /// Cancel a `planned` maintenance (409 when it is already completed or cancelled).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func maintenanceCancel(request: Requests.MaintenanceCancelProductionRequest, requestOptions: RequestOptions? = nil) async throws -> MaintenanceCancelProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/maintenance/cancel",
            body: request,
            requestOptions: requestOptions,
            responseType: MaintenanceCancelProductionResponse.self
        )
    }

    /// List maintenance records. Filterable by `workCenterId`, `status` and `type`; sortable by `plannedDate` and `createdAt`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func maintenanceList(request: Requests.MaintenanceListProductionRequest, requestOptions: RequestOptions? = nil) async throws -> MaintenanceListProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/maintenance/list",
            body: request,
            requestOptions: requestOptions,
            responseType: MaintenanceListProductionResponse.self
        )
    }

    /// Create a bill of materials for a finished item. `outputQuantity` is the finished quantity made per unit of order quantity; each line's `quantity` is the component consumed per unit of order quantity, increased by its `scrapPercent` at completion; `routingId` is the default routing of assembly orders. A BOM that consumes its own finished item is refused with 422, a duplicate `code` with 409.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func bomsCreate(request: Requests.BomsCreateProductionRequest, requestOptions: RequestOptions? = nil) async throws -> BomsCreateProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/boms/create",
            body: request,
            requestOptions: requestOptions,
            responseType: BomsCreateProductionResponse.self
        )
    }

    /// Return one bill of materials with its component lines.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func bomsGet(request: Requests.BomsGetProductionRequest, requestOptions: RequestOptions? = nil) async throws -> BomsGetProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/boms/get",
            body: request,
            requestOptions: requestOptions,
            responseType: BomsGetProductionResponse.self
        )
    }

    /// List bills of materials without their lines. Filterable by `code`, `name`, `finishedItemId` and `isActive`; sortable by `code` and `name`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func bomsList(request: Requests.BomsListProductionRequest, requestOptions: RequestOptions? = nil) async throws -> BomsListProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/boms/list",
            body: request,
            requestOptions: requestOptions,
            responseType: BomsListProductionResponse.self
        )
    }

    /// Create a draft production order for `quantity` units of a BOM in a warehouse; stock moves only at `production/orders/complete`. An `assembly` order takes its routing from `routingId`, else from the BOM, and copies the routing's operations onto the order (`plannedMinutes` = setup minutes + run minutes per unit × finished quantity, priced at the work center's current `costPerHour`) with a pending quality check for every operation that names one. A `routingId` on a `disassembly` order, an inactive routing or a routing without operations is refused with 422.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ordersCreate(request: Requests.OrdersCreateProductionRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersCreateProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/orders/create",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersCreateProductionResponse.self
        )
    }

    /// Record the `actualMinutes` spent on one operation of a draft production order; at completion the actual minutes, else the planned ones, price the operation's labor cost. Refused with 409 once the order is completed.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ordersRecordOperation(request: Requests.OrdersRecordOperationProductionRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersRecordOperationProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/orders/record-operation",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersRecordOperationProductionResponse.self
        )
    }

    /// Add a pending quality check to a draft production order (409 once the order is completed). The order cannot complete while a check is pending.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func qualityChecksAdd(request: Requests.QualityChecksAddProductionRequest, requestOptions: RequestOptions? = nil) async throws -> QualityChecksAddProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/quality-checks/add",
            body: request,
            requestOptions: requestOptions,
            responseType: QualityChecksAddProductionResponse.self
        )
    }

    /// Record the result of a quality check as `passed` or `failed`, with the time and the actor (409 once the order is completed). Only a `pending` check blocks `production/orders/complete`; a `failed` one does not.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func qualityChecksRecord(request: Requests.QualityChecksRecordProductionRequest, requestOptions: RequestOptions? = nil) async throws -> QualityChecksRecordProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/quality-checks/record",
            body: request,
            requestOptions: requestOptions,
            responseType: QualityChecksRecordProductionResponse.self
        )
    }

    /// List quality checks. Filterable by `orderId`, `result` and `name`; sortable by `createdAt` and `name`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func qualityChecksList(request: Requests.QualityChecksListProductionRequest, requestOptions: RequestOptions? = nil) async throws -> QualityChecksListProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/quality-checks/list",
            body: request,
            requestOptions: requestOptions,
            responseType: QualityChecksListProductionResponse.self
        )
    }

    /// Complete a draft production order on the order's date. An `assembly` consumes the components FIFO from the warehouse (line quantity × order quantity, increased by `scrapPercent`), prices each operation at its actual or planned minutes × `costPerHour`, receives the finished item at material cost + labor cost less the share of `scrappedQuantity`, and, when there is labor, scrap or a component stock account other than the finished one, posts a journal entry debiting the finished stock account (and the `production.scrap` rule account for the scrapped share) and crediting the component stock accounts and the work centers' cost accounts (or the `production.laborApplied` rule account); a `disassembly` consumes the finished item and receives the components at its cost shared by quantity. `componentsAccountCode` and `finishedAccountCode` default to the chart's production accounts. Refused with 409 when the order is already completed, a quality check is still pending or the accounting period is locked, and with 422 when the BOM has no lines, `scrappedQuantity` is given on a disassembly or exceeds the finished quantity, the assembly cost is zero, stock is insufficient, a received item needs lot or serial tracking, or a posting account is missing. Emits `stock.changed`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ordersComplete(request: Requests.OrdersCompleteProductionRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersCompleteProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/orders/complete",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersCompleteProductionResponse.self
        )
    }

    /// Return one production order with its operations and quality checks.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ordersGet(request: Requests.OrdersGetProductionRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersGetProductionResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/orders/get",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersGetProductionResponse.self
        )
    }

    /// List production orders without operations and quality checks. Filterable by `bomId`, `warehouseId`, `status` and `type`; sortable by `date` and `createdAt`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
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