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
}