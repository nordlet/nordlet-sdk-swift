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

    /// Partners in member companies that look like other members of the same group (matched on company code or VAT code), with any existing intercompany link. Confirming a candidate via intercompany/links/set enables invoice mirroring.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1ConsolidationIntercompanyCandidates(request: Requests.PostV1ConsolidationIntercompanyCandidatesRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ConsolidationIntercompanyCandidatesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/consolidation/intercompany/candidates",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ConsolidationIntercompanyCandidatesResponse.self
        )
    }

    /// Confirm that a partner record in one member company represents another member company of the group. Once links exist in both directions, issuing an intercompany sale invoice automatically creates the matching draft purchase invoice in the counterparty.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1ConsolidationIntercompanyLinksSet(request: Requests.PostV1ConsolidationIntercompanyLinksSetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ConsolidationIntercompanyLinksSetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/consolidation/intercompany/links/set",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ConsolidationIntercompanyLinksSetResponse.self
        )
    }

    public func postV1ConsolidationIntercompanyLinksList(request: Requests.PostV1ConsolidationIntercompanyLinksListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ConsolidationIntercompanyLinksListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/consolidation/intercompany/links/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ConsolidationIntercompanyLinksListResponse.self
        )
    }

    public func postV1ConsolidationIntercompanyLinksRemove(request: Requests.PostV1ConsolidationIntercompanyLinksRemoveRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ConsolidationIntercompanyLinksRemoveResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/consolidation/intercompany/links/remove",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ConsolidationIntercompanyLinksRemoveResponse.self
        )
    }

    /// Intercompany reconciliation for a period: every issued intercompany sale invoice with its mirrored or manually recorded counterpart, unmatched documents on both sides, and per-currency totals with differences. Confirmed pairs are the basis for consolidation eliminations.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1ConsolidationIntercompanyReport(request: Requests.PostV1ConsolidationIntercompanyReportRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ConsolidationIntercompanyReportResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/consolidation/intercompany/report",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ConsolidationIntercompanyReportResponse.self
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