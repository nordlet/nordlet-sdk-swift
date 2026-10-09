import Foundation

public final class CashClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func ordersCreate(request: Requests.OrdersCreateCashRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersCreateCashResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/cash/orders/create",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersCreateCashResponse.self
        )
    }

    public func ordersGet(request: Requests.OrdersGetCashRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersGetCashResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/cash/orders/get",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersGetCashResponse.self
        )
    }

    public func ordersList(request: Requests.OrdersListCashRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersListCashResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/cash/orders/list",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersListCashResponse.self
        )
    }

    public func balance(request: Requests.BalanceCashRequest, requestOptions: RequestOptions? = nil) async throws -> BalanceCashResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/cash/balance",
            body: request,
            requestOptions: requestOptions,
            responseType: BalanceCashResponse.self
        )
    }

    public func expenseReportsCreate(request: Requests.ExpenseReportsCreateCashRequest, requestOptions: RequestOptions? = nil) async throws -> ExpenseReportsCreateCashResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/cash/expense-reports/create",
            body: request,
            requestOptions: requestOptions,
            responseType: ExpenseReportsCreateCashResponse.self
        )
    }

    public func expenseReportsGet(request: Requests.ExpenseReportsGetCashRequest, requestOptions: RequestOptions? = nil) async throws -> ExpenseReportsGetCashResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/cash/expense-reports/get",
            body: request,
            requestOptions: requestOptions,
            responseType: ExpenseReportsGetCashResponse.self
        )
    }

    public func expenseReportsList(request: Requests.ExpenseReportsListCashRequest, requestOptions: RequestOptions? = nil) async throws -> ExpenseReportsListCashResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/cash/expense-reports/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ExpenseReportsListCashResponse.self
        )
    }

    public func advanceHoldersBalances(request: Requests.AdvanceHoldersBalancesCashRequest, requestOptions: RequestOptions? = nil) async throws -> AdvanceHoldersBalancesCashResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/cash/advance-holders/balances",
            body: request,
            requestOptions: requestOptions,
            responseType: AdvanceHoldersBalancesCashResponse.self
        )
    }
}