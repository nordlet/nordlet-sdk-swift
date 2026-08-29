import Foundation

public final class ProjectsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func postV1ProjectsCreate(request: Requests.PostV1ProjectsCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProjectsCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProjectsCreateResponse.self
        )
    }

    public func postV1ProjectsUpdate(request: Requests.PostV1ProjectsUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProjectsUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProjectsUpdateResponse.self
        )
    }

    public func postV1ProjectsGet(request: Requests.PostV1ProjectsGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProjectsGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProjectsGetResponse.self
        )
    }

    public func postV1ProjectsList(request: Requests.PostV1ProjectsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProjectsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProjectsListResponse.self
        )
    }

    public func postV1ProjectsTimeEntriesCreate(request: Requests.PostV1ProjectsTimeEntriesCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProjectsTimeEntriesCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/time-entries/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProjectsTimeEntriesCreateResponse.self
        )
    }

    public func postV1ProjectsTimeEntriesUpdate(request: Requests.PostV1ProjectsTimeEntriesUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProjectsTimeEntriesUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/time-entries/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProjectsTimeEntriesUpdateResponse.self
        )
    }

    public func postV1ProjectsTimeEntriesDelete(request: Requests.PostV1ProjectsTimeEntriesDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProjectsTimeEntriesDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/time-entries/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProjectsTimeEntriesDeleteResponse.self
        )
    }

    public func postV1ProjectsTimeEntriesList(request: Requests.PostV1ProjectsTimeEntriesListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProjectsTimeEntriesListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/time-entries/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProjectsTimeEntriesListResponse.self
        )
    }

    public func postV1ProjectsTimeEntriesBill(request: Requests.PostV1ProjectsTimeEntriesBillRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProjectsTimeEntriesBillResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/time-entries/bill",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProjectsTimeEntriesBillResponse.self
        )
    }

    public func postV1ProjectsReport(request: Requests.PostV1ProjectsReportRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProjectsReportResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/report",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProjectsReportResponse.self
        )
    }
}