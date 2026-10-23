import Foundation

public final class OperationTypesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Create an operation type: a `code` with the flags that say what it is for (`isSale`, `isPurchase`, ...), an optional `invoiceType` (`invoice`, `credit_note`, `proforma`, `advance`) and optional account codes. An invoice names it in `operationTypeId`: a sale invoice needs `isSale` and a matching `invoiceType`, a purchase invoice `isPurchase`, and the type's account codes then replace the default posting accounts when the invoice is issued (`sales/invoices/issue`) or registered (`purchases/invoices/register`). `includeInVatRegister: false` keeps the type's invoices out of the Lithuanian i.SAF and FR0600, `includeInSaft: false` out of the SAF-T file. Account codes must exist and be postable and `payerPartnerId` must be an active partner (422 otherwise); a repeated `code` is refused with 409.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func create(request: Requests.CreateOperationTypesRequest, requestOptions: RequestOptions? = nil) async throws -> CreateOperationTypesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/operation-types/create",
            body: request,
            requestOptions: requestOptions,
            responseType: CreateOperationTypesResponse.self
        )
    }

    /// Change an operation type's fields; omitted ones keep their value. A `code` already used by another type is refused with 409, a body without changes with 400.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func update(request: Requests.UpdateOperationTypesRequest, requestOptions: RequestOptions? = nil) async throws -> UpdateOperationTypesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/operation-types/update",
            body: request,
            requestOptions: requestOptions,
            responseType: UpdateOperationTypesResponse.self
        )
    }

    /// Read one operation type.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func get(request: Requests.GetOperationTypesRequest, requestOptions: RequestOptions? = nil) async throws -> GetOperationTypesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/operation-types/get",
            body: request,
            requestOptions: requestOptions,
            responseType: GetOperationTypesResponse.self
        )
    }

    /// Delete an operation type that no sale invoice, purchase invoice or document series refers to. Otherwise the call is refused with 409; deactivate the type with `operation-types/update` instead.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func delete(request: Requests.DeleteOperationTypesRequest, requestOptions: RequestOptions? = nil) async throws -> DeleteOperationTypesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/operation-types/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: DeleteOperationTypesResponse.self
        )
    }

    /// List operation types. Filterable by `code`, `name`, `isSale`, `isPurchase` and `isActive`; sortable by `code`, `name`, `sortOrder` and `createdAt`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func list(request: Requests.ListOperationTypesRequest, requestOptions: RequestOptions? = nil) async throws -> ListOperationTypesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/operation-types/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ListOperationTypesResponse.self
        )
    }
}