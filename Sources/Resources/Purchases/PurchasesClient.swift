import Foundation

public final class PurchasesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func postV1PurchasesInvoicesCreate(request: Requests.PostV1PurchasesInvoicesCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PurchasesInvoicesCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/invoices/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PurchasesInvoicesCreateResponse.self
        )
    }

    public func postV1PurchasesInvoicesGet(request: Requests.PostV1PurchasesInvoicesGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PurchasesInvoicesGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/invoices/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PurchasesInvoicesGetResponse.self
        )
    }

    public func postV1PurchasesInvoicesUpdate(request: Requests.PostV1PurchasesInvoicesUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PurchasesInvoicesUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/invoices/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PurchasesInvoicesUpdateResponse.self
        )
    }

    public func postV1PurchasesInvoicesDelete(request: Requests.PostV1PurchasesInvoicesDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PurchasesInvoicesDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/invoices/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PurchasesInvoicesDeleteResponse.self
        )
    }

    public func postV1PurchasesInvoicesRegister(request: Requests.PostV1PurchasesInvoicesRegisterRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PurchasesInvoicesRegisterResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/invoices/register",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PurchasesInvoicesRegisterResponse.self
        )
    }

    public func postV1PurchasesInvoicesList(request: Requests.PostV1PurchasesInvoicesListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PurchasesInvoicesListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/invoices/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PurchasesInvoicesListResponse.self
        )
    }

    public func postV1PurchasesOrdersCreate(request: Requests.PostV1PurchasesOrdersCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PurchasesOrdersCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/orders/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PurchasesOrdersCreateResponse.self
        )
    }

    public func postV1PurchasesOrdersUpdate(request: Requests.PostV1PurchasesOrdersUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PurchasesOrdersUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/orders/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PurchasesOrdersUpdateResponse.self
        )
    }

    public func postV1PurchasesOrdersGet(request: Requests.PostV1PurchasesOrdersGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PurchasesOrdersGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/orders/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PurchasesOrdersGetResponse.self
        )
    }

    public func postV1PurchasesOrdersList(request: Requests.PostV1PurchasesOrdersListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PurchasesOrdersListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/orders/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PurchasesOrdersListResponse.self
        )
    }

    public func postV1PurchasesOrdersSubmit(request: Requests.PostV1PurchasesOrdersSubmitRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PurchasesOrdersSubmitResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/orders/submit",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PurchasesOrdersSubmitResponse.self
        )
    }

    public func postV1PurchasesOrdersApprove(request: Requests.PostV1PurchasesOrdersApproveRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PurchasesOrdersApproveResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/orders/approve",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PurchasesOrdersApproveResponse.self
        )
    }

    public func postV1PurchasesOrdersReject(request: Requests.PostV1PurchasesOrdersRejectRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PurchasesOrdersRejectResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/orders/reject",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PurchasesOrdersRejectResponse.self
        )
    }

    public func postV1PurchasesOrdersCancel(request: Requests.PostV1PurchasesOrdersCancelRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PurchasesOrdersCancelResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/orders/cancel",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PurchasesOrdersCancelResponse.self
        )
    }

    public func postV1PurchasesOrdersClose(request: Requests.PostV1PurchasesOrdersCloseRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PurchasesOrdersCloseResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/orders/close",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PurchasesOrdersCloseResponse.self
        )
    }

    public func postV1PurchasesOrdersDelete(request: Requests.PostV1PurchasesOrdersDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PurchasesOrdersDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/orders/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PurchasesOrdersDeleteResponse.self
        )
    }

    public func postV1PurchasesReceiptsCreate(request: Requests.PostV1PurchasesReceiptsCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PurchasesReceiptsCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/receipts/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PurchasesReceiptsCreateResponse.self
        )
    }

    public func postV1PurchasesReceiptsGet(request: Requests.PostV1PurchasesReceiptsGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PurchasesReceiptsGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/receipts/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PurchasesReceiptsGetResponse.self
        )
    }

    public func postV1PurchasesReceiptsList(request: Requests.PostV1PurchasesReceiptsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PurchasesReceiptsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/receipts/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PurchasesReceiptsListResponse.self
        )
    }

    public func postV1PurchasesInvoicesMatch(request: Requests.PostV1PurchasesInvoicesMatchRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PurchasesInvoicesMatchResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/invoices/match",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PurchasesInvoicesMatchResponse.self
        )
    }
}