import Foundation

public final class DocumentSeriesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Create a numbering series for sale invoices, credit notes, proformas or advance invoices (`documentType`). Numbers run from `nextNumber`, padded to `numberLength` digits, and are written as `prefix`-number or, with `printSeries` false, as the bare number; a series may be bound to an operation type (a default series of an operation type is picked for its documents that name no series) and to a warehouse, which `sales/invoices/issue` takes the goods from. `isDefault` makes it the default of its document type and clears the previous one. Answers 422 when only one end of the allocated range `allocatedFrom`..`allocatedTo` is given or the range is reversed, 409 when the prefix exists for the document type.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func create(request: Requests.CreateDocumentSeriesRequest, requestOptions: RequestOptions? = nil) async throws -> CreateDocumentSeriesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/document-series/create",
            body: request,
            requestOptions: requestOptions,
            responseType: CreateDocumentSeriesResponse.self
        )
    }

    /// Change a document series; fields left out keep their value. `nextNumber` cannot go below its current value (409); `isDefault` clears the previous default of the document type. Answers 422 for an incomplete or reversed allocated range, 409 when the prefix is taken for the document type.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func update(request: Requests.UpdateDocumentSeriesRequest, requestOptions: RequestOptions? = nil) async throws -> UpdateDocumentSeriesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/document-series/update",
            body: request,
            requestOptions: requestOptions,
            responseType: UpdateDocumentSeriesResponse.self
        )
    }

    /// Return one document series.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func get(request: Requests.GetDocumentSeriesRequest, requestOptions: RequestOptions? = nil) async throws -> GetDocumentSeriesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/document-series/get",
            body: request,
            requestOptions: requestOptions,
            responseType: GetDocumentSeriesResponse.self
        )
    }

    /// Delete a document series no sale document uses. Answers 409 when invoices reference it; deactivate it with `isActive` instead.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func delete(request: Requests.DeleteDocumentSeriesRequest, requestOptions: RequestOptions? = nil) async throws -> DeleteDocumentSeriesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/document-series/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: DeleteDocumentSeriesResponse.self
        )
    }

    /// List document series. Filterable by documentType, prefix, operationTypeId and isActive; sortable by prefix, documentType and createdAt.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func list(request: Requests.ListDocumentSeriesRequest, requestOptions: RequestOptions? = nil) async throws -> ListDocumentSeriesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/document-series/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ListDocumentSeriesResponse.self
        )
    }
}