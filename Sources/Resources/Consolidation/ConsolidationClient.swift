import Foundation

public final class ConsolidationClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func postV1ConsolidationGroupsCreate(request: Requests.PostV1ConsolidationGroupsCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ConsolidationGroupsCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/consolidation/groups/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ConsolidationGroupsCreateResponse.self
        )
    }

    public func postV1ConsolidationGroupsList(request: Requests.PostV1ConsolidationGroupsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ConsolidationGroupsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/consolidation/groups/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ConsolidationGroupsListResponse.self
        )
    }

    public func postV1ConsolidationGroupsGet(request: Requests.PostV1ConsolidationGroupsGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ConsolidationGroupsGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/consolidation/groups/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ConsolidationGroupsGetResponse.self
        )
    }

    public func postV1ConsolidationGroupsUpdate(request: Requests.PostV1ConsolidationGroupsUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ConsolidationGroupsUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/consolidation/groups/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ConsolidationGroupsUpdateResponse.self
        )
    }

    public func postV1ConsolidationGroupsDelete(request: Requests.PostV1ConsolidationGroupsDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ConsolidationGroupsDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/consolidation/groups/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ConsolidationGroupsDeleteResponse.self
        )
    }

    public func postV1ConsolidationMembersAdd(request: Requests.PostV1ConsolidationMembersAddRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ConsolidationMembersAddResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/consolidation/members/add",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ConsolidationMembersAddResponse.self
        )
    }

    public func postV1ConsolidationMembersRemove(request: Requests.PostV1ConsolidationMembersRemoveRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ConsolidationMembersRemoveResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/consolidation/members/remove",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ConsolidationMembersRemoveResponse.self
        )
    }

    public func postV1ConsolidationReport(request: Requests.PostV1ConsolidationReportRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ConsolidationReportResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/consolidation/report",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ConsolidationReportResponse.self
        )
    }
}