import Foundation

public final class EcommerceClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Create a sales order from an online channel in status `new`. The customer is `partnerId` or `partner` details: with an `email` the existing partner with that e-mail is reused, otherwise a new partner is created; without either the call is refused with 422. `currency` defaults to the company's invoice currency, and `shipToCountryCode` and `marketplace` are kept for the VAT treatment of the invoice at fulfilment. A second order with the same `channel` and `externalRef` is refused with 409. Emits `sales_order.created`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ordersCreate(request: Requests.OrdersCreateEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersCreateEcommerceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ecommerce/orders/create",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersCreateEcommerceResponse.self
        )
    }

    /// Read one sales order with its lines.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ordersGet(request: Requests.OrdersGetEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersGetEcommerceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ecommerce/orders/get",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersGetEcommerceResponse.self
        )
    }

    /// List sales orders without their lines. Filterable by `channel`, `externalRef`, `partnerId` and `status`; sortable by `createdAt`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ordersList(request: Requests.OrdersListEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersListEcommerceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ecommerce/orders/list",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersListEcommerceResponse.self
        )
    }

    /// Reserve stock for a `new` order in `warehouseId` (default: the order's warehouse; 422 when neither is set). Each product line, and each product component of a set line, is checked against the warehouse's on-hand quantity less the existing reservations; when any item is short the call is refused with 422 and nothing is reserved. Otherwise a reservation is written per stock line, `stock.changed` (change type `reserve`) is emitted for each, and the order becomes `reserved`. An order in another status is refused with 409.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ordersReserve(request: Requests.OrdersReserveEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersReserveEcommerceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ecommerce/orders/reserve",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersReserveEcommerceResponse.self
        )
    }

    /// Fulfil a `new` or `reserved` order: its reservations are released, the stock lines are consumed FIFO from the order's warehouse on `date` (default: the company's today), the cost of goods sold is posted as a journal entry debiting `cogsAccountCode` and crediting the stock accounts of the consumed layers (`inventoryAccountCode` when a layer has none), and a draft sale invoice for the order lines is created and linked as `invoiceId`, ready for `sales/invoices/issue`. With a `shipToCountryCode` on the order the invoice's VAT scheme is resolved for goods shipped there, as a marketplace sale when `marketplace` is set. Account codes default to the company's chart. Refused with 422 when the stock lines have no warehouse or stock is insufficient (unless the company allows negative stock), with 409 when the accounting period is locked or the order is already `fulfilled` or `cancelled`. Emits `sales_order.fulfilled` and `stock.changed`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ordersFulfill(request: Requests.OrdersFulfillEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersFulfillEcommerceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ecommerce/orders/fulfill",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersFulfillEcommerceResponse.self
        )
    }

    /// Cancel an order that is not fulfilled: its stock reservations are released, `stock.changed` (change type `release`) is emitted for each, and the status becomes `cancelled`. A fulfilled order is refused with 409.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ordersCancel(request: Requests.OrdersCancelEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersCancelEcommerceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ecommerce/orders/cancel",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersCancelEcommerceResponse.self
        )
    }

    /// List the company's items as a shop catalogue, in order of last update, with price and stock. `price` is the item's price in `priceListId` when given, else its own sale price, and `currency` that of the price list, else the company's invoice currency; `vatRatePercent` falls back to the rate of the item's VAT classifier. For a product `onHand`, `reserved` and `available` are summed over all warehouses or over `warehouseId` only; for a set `available` is the number of sets its product components can still make; for a service they are null. With `updatedSince` only items changed after that time are returned, deleted ones included (`deleted: true`), so a shop can sync incrementally; without it only live items are listed.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func productsList(request: Requests.ProductsListEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> ProductsListEcommerceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ecommerce/products/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ProductsListEcommerceResponse.self
        )
    }

    /// Stock position per item and warehouse: `onHand`, `reserved` and their difference `available`, for all warehouses or `warehouseId` only. Only items with a positive quantity on hand are returned.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func stockList(request: Requests.StockListEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> StockListEcommerceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ecommerce/stock/list",
            body: request,
            requestOptions: requestOptions,
            responseType: StockListEcommerceResponse.self
        )
    }
}