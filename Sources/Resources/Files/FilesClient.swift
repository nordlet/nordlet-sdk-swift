import Foundation

public final class FilesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func postV1FilesUpload(request: Requests.PostV1FilesUploadRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1FilesUploadResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/files/upload",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1FilesUploadResponse.self
        )
    }

    public func postV1FilesGet(request: Requests.PostV1FilesGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1FilesGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/files/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1FilesGetResponse.self
        )
    }

    public func postV1FilesList(request: Requests.PostV1FilesListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1FilesListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/files/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1FilesListResponse.self
        )
    }

    public func postV1FilesDelete(request: Requests.PostV1FilesDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1FilesDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/files/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1FilesDeleteResponse.self
        )
    }
}