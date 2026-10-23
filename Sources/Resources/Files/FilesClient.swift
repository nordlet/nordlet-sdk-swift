import Foundation

public final class FilesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Store a base64-encoded file of up to 10 MB (413 above that) under an `entity` and optional `entityId`, and return its record with the SHA-256 of the content and its `storageKey`, which other calls take as `documentRef`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func upload(request: Requests.UploadFilesRequest, requestOptions: RequestOptions? = nil) async throws -> UploadFilesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/files/upload",
            body: request,
            requestOptions: requestOptions,
            responseType: UploadFilesResponse.self
        )
    }

    /// Return a file record with its content, base64-encoded.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func get(request: Requests.GetFilesRequest, requestOptions: RequestOptions? = nil) async throws -> GetFilesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/files/get",
            body: request,
            requestOptions: requestOptions,
            responseType: GetFilesResponse.self
        )
    }

    /// List the company's files. Filterable by `entity`, `entityId` and `fileName`; sortable by `createdAt`, `fileName` and `sizeBytes`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func list(request: Requests.ListFilesRequest, requestOptions: RequestOptions? = nil) async throws -> ListFilesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/files/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ListFilesResponse.self
        )
    }

    /// Delete a file record and its stored content.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func delete(request: Requests.DeleteFilesRequest, requestOptions: RequestOptions? = nil) async throws -> DeleteFilesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/files/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: DeleteFilesResponse.self
        )
    }
}