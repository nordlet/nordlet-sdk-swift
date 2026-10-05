import Foundation

public final class ProjectsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func create(request: Requests.CreateProjectsRequest, requestOptions: RequestOptions? = nil) async throws -> CreateProjectsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/create",
            body: request,
            requestOptions: requestOptions,
            responseType: CreateProjectsResponse.self
        )
    }

    public func update(request: Requests.UpdateProjectsRequest, requestOptions: RequestOptions? = nil) async throws -> UpdateProjectsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/update",
            body: request,
            requestOptions: requestOptions,
            responseType: UpdateProjectsResponse.self
        )
    }

    public func get(request: Requests.GetProjectsRequest, requestOptions: RequestOptions? = nil) async throws -> GetProjectsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/get",
            body: request,
            requestOptions: requestOptions,
            responseType: GetProjectsResponse.self
        )
    }

    public func list(request: Requests.ListProjectsRequest, requestOptions: RequestOptions? = nil) async throws -> ListProjectsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ListProjectsResponse.self
        )
    }

    public func timeEntriesCreate(request: Requests.TimeEntriesCreateProjectsRequest, requestOptions: RequestOptions? = nil) async throws -> TimeEntriesCreateProjectsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/time-entries/create",
            body: request,
            requestOptions: requestOptions,
            responseType: TimeEntriesCreateProjectsResponse.self
        )
    }

    public func timeEntriesUpdate(request: Requests.TimeEntriesUpdateProjectsRequest, requestOptions: RequestOptions? = nil) async throws -> TimeEntriesUpdateProjectsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/time-entries/update",
            body: request,
            requestOptions: requestOptions,
            responseType: TimeEntriesUpdateProjectsResponse.self
        )
    }

    public func timeEntriesDelete(request: Requests.TimeEntriesDeleteProjectsRequest, requestOptions: RequestOptions? = nil) async throws -> TimeEntriesDeleteProjectsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/time-entries/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: TimeEntriesDeleteProjectsResponse.self
        )
    }

    public func timeEntriesList(request: Requests.TimeEntriesListProjectsRequest, requestOptions: RequestOptions? = nil) async throws -> TimeEntriesListProjectsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/time-entries/list",
            body: request,
            requestOptions: requestOptions,
            responseType: TimeEntriesListProjectsResponse.self
        )
    }

    public func timeEntriesBill(request: Requests.TimeEntriesBillProjectsRequest, requestOptions: RequestOptions? = nil) async throws -> TimeEntriesBillProjectsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/time-entries/bill",
            body: request,
            requestOptions: requestOptions,
            responseType: TimeEntriesBillProjectsResponse.self
        )
    }

    public func report(request: Requests.ReportProjectsRequest, requestOptions: RequestOptions? = nil) async throws -> ReportProjectsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/report",
            body: request,
            requestOptions: requestOptions,
            responseType: ReportProjectsResponse.self
        )
    }
}