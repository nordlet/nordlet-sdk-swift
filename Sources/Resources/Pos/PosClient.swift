import Foundation

public final class PosClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Register a cash register (POS device). The serial number must be unique in the company; a repeat is refused with 409.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func devicesCreate(request: Requests.DevicesCreatePosRequest, requestOptions: RequestOptions? = nil) async throws -> DevicesCreatePosResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/pos/devices/create",
            body: request,
            requestOptions: requestOptions,
            responseType: DevicesCreatePosResponse.self
        )
    }

    /// Change a POS device's details or set `isActive`; an inactive device accepts no new shifts or reports. A serial number already used by another device is refused with 409.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func devicesUpdate(request: Requests.DevicesUpdatePosRequest, requestOptions: RequestOptions? = nil) async throws -> DevicesUpdatePosResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/pos/devices/update",
            body: request,
            requestOptions: requestOptions,
            responseType: DevicesUpdatePosResponse.self
        )
    }

    /// List POS devices. Filterable by `name` and `serialNumber`; sortable by `name`, `serialNumber` and `createdAt`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func devicesList(request: Requests.DevicesListPosRequest, requestOptions: RequestOptions? = nil) async throws -> DevicesListPosResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/pos/devices/list",
            body: request,
            requestOptions: requestOptions,
            responseType: DevicesListPosResponse.self
        )
    }

    /// Record a daily cash register report (Z-report) and post it to the ledger in one journal entry: the cash and card takings are debited to `cashAccountCode` and `cardAccountCode`, the net of the `vatLines` is credited to `revenueAccountCode` and their VAT to `vatAccountCode`. `itemLines` write the sold products off `warehouseId` FIFO (a set is expanded to its product components) and add the cost of goods sold, debited to `cogsAccountCode` against the stock accounts. Account codes default to the company's chart. Refused with 422 when cash plus card differs from the gross total, the item lines have no warehouse or the device is inactive, with 409 when the accounting period is locked or the `reportNumber` already exists. Emits `pos_report.created` and, per item line, `stock.changed`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func reportsCreate(request: Requests.ReportsCreatePosRequest, requestOptions: RequestOptions? = nil) async throws -> ReportsCreatePosResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/pos/reports/create",
            body: request,
            requestOptions: requestOptions,
            responseType: ReportsCreatePosResponse.self
        )
    }

    /// Read one POS report with its VAT lines.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func reportsGet(request: Requests.ReportsGetPosRequest, requestOptions: RequestOptions? = nil) async throws -> ReportsGetPosResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/pos/reports/get",
            body: request,
            requestOptions: requestOptions,
            responseType: ReportsGetPosResponse.self
        )
    }

    /// List POS reports without their VAT lines. Filterable by `date`, `reportNumber` and `deviceId`; sortable by `date`, `reportNumber` and `createdAt`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func reportsList(request: Requests.ReportsListPosRequest, requestOptions: RequestOptions? = nil) async throws -> ReportsListPosResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/pos/reports/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ReportsListPosResponse.self
        )
    }

    /// Open a shift on a POS device with the cash float `openingCash`. A device has at most one open shift (409 for a second); an inactive device is refused with 422. Give `warehouseId` when the shift will sell stock items; they are written off that warehouse when the shift is closed.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func shiftsOpen(request: Requests.ShiftsOpenPosRequest, requestOptions: RequestOptions? = nil) async throws -> ShiftsOpenPosResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/pos/shifts/open",
            body: request,
            requestOptions: requestOptions,
            responseType: ShiftsOpenPosResponse.self
        )
    }

    /// Read one POS shift.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func shiftsGet(request: Requests.ShiftsGetPosRequest, requestOptions: RequestOptions? = nil) async throws -> ShiftsGetPosResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/pos/shifts/get",
            body: request,
            requestOptions: requestOptions,
            responseType: ShiftsGetPosResponse.self
        )
    }

    /// List POS shifts. Filterable by `deviceId` and `status`; sortable by `openedAt`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func shiftsList(request: Requests.ShiftsListPosRequest, requestOptions: RequestOptions? = nil) async throws -> ShiftsListPosResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/pos/shifts/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ShiftsListPosResponse.self
        )
    }

    /// Record a receipt in an open shift, numbered per shift from 1. Each line's net, VAT and gross come from its VAT-inclusive unit price; a line without `description` takes its item's name. Refused with 422 when cash plus card differs from the receipt total or a stock item is sold in a shift opened without a warehouse, with 409 when the shift is closed.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func receiptsCreate(request: Requests.ReceiptsCreatePosRequest, requestOptions: RequestOptions? = nil) async throws -> ReceiptsCreatePosResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/pos/receipts/create",
            body: request,
            requestOptions: requestOptions,
            responseType: ReceiptsCreatePosResponse.self
        )
    }

    /// List receipts without their lines. Filterable by `shiftId`; sortable by `number` and `createdAt`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func receiptsList(request: Requests.ReceiptsListPosRequest, requestOptions: RequestOptions? = nil) async throws -> ReceiptsListPosResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/pos/receipts/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ReceiptsListPosResponse.self
        )
    }

    /// Read one receipt with its lines.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func receiptsGet(request: Requests.ReceiptsGetPosRequest, requestOptions: RequestOptions? = nil) async throws -> ReceiptsGetPosResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/pos/receipts/get",
            body: request,
            requestOptions: requestOptions,
            responseType: ReceiptsGetPosResponse.self
        )
    }

    /// Close an open shift: its receipts are summed by VAT rate and by product into one POS report, created as by `pos/reports/create` with number `reportNumber` (default `Z-<device serial>-<n>`, n being the device's closed shifts plus one) on `date` (default: the company's today), which posts the takings and the stock write-off to the ledger and emits `pos_report.created`. The response adds `expectedCash` (opening cash plus the cash receipts) and `cashDifference` (`countedCash` less expected). A shift without receipts is refused with 422, a closed one with 409.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
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