import Foundation

public final class DocumentSeriesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func create(request: Requests.CreateDocumentSeriesRequest, requestOptions: RequestOptions? = nil) async throws -> CreateDocumentSeriesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/document-series/create",
            body: request,
            requestOptions: requestOptions,
            responseType: CreateDocumentSeriesResponse.self
        )
    }

    public func update(request: Requests.UpdateDocumentSeriesRequest, requestOptions: RequestOptions? = nil) async throws -> UpdateDocumentSeriesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/document-series/update",
            body: request,
            requestOptions: requestOptions,
            responseType: UpdateDocumentSeriesResponse.self
        )
    }

    public func get(request: Requests.GetDocumentSeriesRequest, requestOptions: RequestOptions? = nil) async throws -> GetDocumentSeriesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/document-series/get",
            body: request,
            requestOptions: requestOptions,
            responseType: GetDocumentSeriesResponse.self
        )
    }

    public func delete(request: Requests.DeleteDocumentSeriesRequest, requestOptions: RequestOptions? = nil) async throws -> DeleteDocumentSeriesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/document-series/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: DeleteDocumentSeriesResponse.self
        )
    }

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