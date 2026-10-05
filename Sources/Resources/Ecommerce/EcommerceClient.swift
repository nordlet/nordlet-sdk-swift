import Foundation

public final class EcommerceClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func ordersCreate(request: Requests.OrdersCreateEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersCreateEcommerceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ecommerce/orders/create",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersCreateEcommerceResponse.self
        )
    }

    public func ordersGet(request: Requests.OrdersGetEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersGetEcommerceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ecommerce/orders/get",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersGetEcommerceResponse.self
        )
    }

    public func ordersList(request: Requests.OrdersListEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersListEcommerceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ecommerce/orders/list",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersListEcommerceResponse.self
        )
    }

    public func ordersReserve(request: Requests.OrdersReserveEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersReserveEcommerceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ecommerce/orders/reserve",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersReserveEcommerceResponse.self
        )
    }

    public func ordersFulfill(request: Requests.OrdersFulfillEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersFulfillEcommerceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ecommerce/orders/fulfill",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersFulfillEcommerceResponse.self
        )
    }

    public func ordersCancel(request: Requests.OrdersCancelEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersCancelEcommerceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ecommerce/orders/cancel",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersCancelEcommerceResponse.self
        )
    }

    public func productsList(request: Requests.ProductsListEcommerceRequest, requestOptions: RequestOptions? = nil) async throws -> ProductsListEcommerceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ecommerce/products/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ProductsListEcommerceResponse.self
        )
    }

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