import Foundation

public final class AssetsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func postV1AssetsGroupsCreate(request: Requests.PostV1AssetsGroupsCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AssetsGroupsCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/assets/groups/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AssetsGroupsCreateResponse.self
        )
    }

    public func postV1AssetsGroupsList(request: Requests.PostV1AssetsGroupsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AssetsGroupsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/assets/groups/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AssetsGroupsListResponse.self
        )
    }

    public func postV1AssetsAssetsCreate(request: Requests.PostV1AssetsAssetsCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AssetsAssetsCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/assets/assets/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AssetsAssetsCreateResponse.self
        )
    }

    public func postV1AssetsAssetsGet(request: Requests.PostV1AssetsAssetsGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AssetsAssetsGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/assets/assets/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AssetsAssetsGetResponse.self
        )
    }

    public func postV1AssetsAssetsList(request: Requests.PostV1AssetsAssetsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AssetsAssetsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/assets/assets/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AssetsAssetsListResponse.self
        )
    }

    public func postV1AssetsAssetsModernize(request: Requests.PostV1AssetsAssetsModernizeRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AssetsAssetsModernizeResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/assets/assets/modernize",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AssetsAssetsModernizeResponse.self
        )
    }

    public func postV1AssetsDepreciationPreview(request: Requests.PostV1AssetsDepreciationPreviewRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AssetsDepreciationPreviewResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/assets/depreciation/preview",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AssetsDepreciationPreviewResponse.self
        )
    }

    public func postV1AssetsDepreciationPost(request: Requests.PostV1AssetsDepreciationPostRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1AssetsDepreciationPostResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/assets/depreciation/post",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1AssetsDepreciationPostResponse.self
        )
    }
}