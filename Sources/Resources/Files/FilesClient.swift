import Foundation

public final class FilesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func upload(request: Requests.UploadFilesRequest, requestOptions: RequestOptions? = nil) async throws -> UploadFilesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/files/upload",
            body: request,
            requestOptions: requestOptions,
            responseType: UploadFilesResponse.self
        )
    }

    public func get(request: Requests.GetFilesRequest, requestOptions: RequestOptions? = nil) async throws -> GetFilesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/files/get",
            body: request,
            requestOptions: requestOptions,
            responseType: GetFilesResponse.self
        )
    }

    public func list(request: Requests.ListFilesRequest, requestOptions: RequestOptions? = nil) async throws -> ListFilesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/files/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ListFilesResponse.self
        )
    }

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