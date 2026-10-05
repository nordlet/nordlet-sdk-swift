import Foundation

public final class PurchasesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func invoicesCreate(request: Requests.InvoicesCreatePurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> InvoicesCreatePurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/invoices/create",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoicesCreatePurchasesResponse.self
        )
    }

    public func invoicesGet(request: Requests.InvoicesGetPurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> InvoicesGetPurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/invoices/get",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoicesGetPurchasesResponse.self
        )
    }

    public func invoicesUpdate(request: Requests.InvoicesUpdatePurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> InvoicesUpdatePurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/invoices/update",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoicesUpdatePurchasesResponse.self
        )
    }

    public func invoicesDelete(request: Requests.InvoicesDeletePurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> InvoicesDeletePurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/invoices/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoicesDeletePurchasesResponse.self
        )
    }

    public func invoicesRegister(request: Requests.InvoicesRegisterPurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> InvoicesRegisterPurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/invoices/register",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoicesRegisterPurchasesResponse.self
        )
    }

    public func invoicesList(request: Requests.InvoicesListPurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> InvoicesListPurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/invoices/list",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoicesListPurchasesResponse.self
        )
    }

    public func ordersCreate(request: Requests.OrdersCreatePurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersCreatePurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/orders/create",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersCreatePurchasesResponse.self
        )
    }

    public func ordersUpdate(request: Requests.OrdersUpdatePurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersUpdatePurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/orders/update",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersUpdatePurchasesResponse.self
        )
    }

    public func ordersGet(request: Requests.OrdersGetPurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersGetPurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/orders/get",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersGetPurchasesResponse.self
        )
    }

    public func ordersList(request: Requests.OrdersListPurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersListPurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/orders/list",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersListPurchasesResponse.self
        )
    }

    public func ordersSubmit(request: Requests.OrdersSubmitPurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersSubmitPurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/orders/submit",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersSubmitPurchasesResponse.self
        )
    }

    public func ordersApprove(request: Requests.OrdersApprovePurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersApprovePurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/orders/approve",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersApprovePurchasesResponse.self
        )
    }

    public func ordersReject(request: Requests.OrdersRejectPurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersRejectPurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/orders/reject",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersRejectPurchasesResponse.self
        )
    }

    public func ordersCancel(request: Requests.OrdersCancelPurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersCancelPurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/orders/cancel",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersCancelPurchasesResponse.self
        )
    }

    public func ordersClose(request: Requests.OrdersClosePurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersClosePurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/orders/close",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersClosePurchasesResponse.self
        )
    }

    public func ordersDelete(request: Requests.OrdersDeletePurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersDeletePurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/orders/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersDeletePurchasesResponse.self
        )
    }

    public func receiptsCreate(request: Requests.ReceiptsCreatePurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> ReceiptsCreatePurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/receipts/create",
            body: request,
            requestOptions: requestOptions,
            responseType: ReceiptsCreatePurchasesResponse.self
        )
    }

    public func receiptsGet(request: Requests.ReceiptsGetPurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> ReceiptsGetPurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/receipts/get",
            body: request,
            requestOptions: requestOptions,
            responseType: ReceiptsGetPurchasesResponse.self
        )
    }

    public func receiptsList(request: Requests.ReceiptsListPurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> ReceiptsListPurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/receipts/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ReceiptsListPurchasesResponse.self
        )
    }

    public func invoicesMatch(request: Requests.InvoicesMatchPurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> InvoicesMatchPurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/invoices/match",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoicesMatchPurchasesResponse.self
        )
    }
}