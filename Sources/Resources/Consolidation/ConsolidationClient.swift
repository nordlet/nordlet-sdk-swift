import Foundation

public final class ConsolidationClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Create a consolidation group owned by the calling company; `presentationCurrency` defaults to the company's base currency. Members are added with `consolidation/members/add`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func groupsCreate(request: Requests.GroupsCreateConsolidationRequest, requestOptions: RequestOptions? = nil) async throws -> GroupsCreateConsolidationResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/consolidation/groups/create",
            body: request,
            requestOptions: requestOptions,
            responseType: GroupsCreateConsolidationResponse.self
        )
    }

    /// List the calling company's consolidation groups with their member counts.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func groupsList(request: Requests.GroupsListConsolidationRequest, requestOptions: RequestOptions? = nil) async throws -> GroupsListConsolidationResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/consolidation/groups/list",
            body: request,
            requestOptions: requestOptions,
            responseType: GroupsListConsolidationResponse.self
        )
    }

    /// Return one consolidation group with its members, each with its ownership percentage and consolidation method.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func groupsGet(request: Requests.GroupsGetConsolidationRequest, requestOptions: RequestOptions? = nil) async throws -> GroupsGetConsolidationResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/consolidation/groups/get",
            body: request,
            requestOptions: requestOptions,
            responseType: GroupsGetConsolidationResponse.self
        )
    }

    /// Rename a consolidation group or change its presentation currency.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func groupsUpdate(request: Requests.GroupsUpdateConsolidationRequest, requestOptions: RequestOptions? = nil) async throws -> GroupsUpdateConsolidationResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/consolidation/groups/update",
            body: request,
            requestOptions: requestOptions,
            responseType: GroupsUpdateConsolidationResponse.self
        )
    }

    /// Delete a consolidation group.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func groupsDelete(request: Requests.GroupsDeleteConsolidationRequest, requestOptions: RequestOptions? = nil) async throws -> GroupsDeleteConsolidationResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/consolidation/groups/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: GroupsDeleteConsolidationResponse.self
        )
    }

    /// Add a company to a consolidation group with its ownership percentage and method (`full`, `proportional` or `equity`), or change those of an existing member. Another company can be added only by a signed-in user who is owner, admin or accountant of it; an API key is refused with 403.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func membersAdd(request: Requests.MembersAddConsolidationRequest, requestOptions: RequestOptions? = nil) async throws -> MembersAddConsolidationResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/consolidation/members/add",
            body: request,
            requestOptions: requestOptions,
            responseType: MembersAddConsolidationResponse.self
        )
    }

    /// Remove a company from a consolidation group.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func membersRemove(request: Requests.MembersRemoveConsolidationRequest, requestOptions: RequestOptions? = nil) async throws -> MembersRemoveConsolidationResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/consolidation/members/remove",
            body: request,
            requestOptions: requestOptions,
            responseType: MembersRemoveConsolidationResponse.self
        )
    }

    /// Partners in member companies that look like other members of the same group (matched on company code or VAT code), with any existing intercompany link. Confirming a candidate via intercompany/links/set enables invoice mirroring.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func intercompanyCandidates(request: Requests.IntercompanyCandidatesConsolidationRequest, requestOptions: RequestOptions? = nil) async throws -> IntercompanyCandidatesConsolidationResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/consolidation/intercompany/candidates",
            body: request,
            requestOptions: requestOptions,
            responseType: IntercompanyCandidatesConsolidationResponse.self
        )
    }

    /// Confirm that a partner record in one member company represents another member company of the group. Once links exist in both directions, issuing an intercompany sale invoice automatically creates the matching draft purchase invoice in the counterparty.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func intercompanyLinksSet(request: Requests.IntercompanyLinksSetConsolidationRequest, requestOptions: RequestOptions? = nil) async throws -> IntercompanyLinksSetConsolidationResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/consolidation/intercompany/links/set",
            body: request,
            requestOptions: requestOptions,
            responseType: IntercompanyLinksSetConsolidationResponse.self
        )
    }

    /// List the intercompany links of a group: which partner record of which member company stands for which other member company.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func intercompanyLinksList(request: Requests.IntercompanyLinksListConsolidationRequest, requestOptions: RequestOptions? = nil) async throws -> IntercompanyLinksListConsolidationResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/consolidation/intercompany/links/list",
            body: request,
            requestOptions: requestOptions,
            responseType: IntercompanyLinksListConsolidationResponse.self
        )
    }

    /// Remove an intercompany link from a group.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func intercompanyLinksRemove(request: Requests.IntercompanyLinksRemoveConsolidationRequest, requestOptions: RequestOptions? = nil) async throws -> IntercompanyLinksRemoveConsolidationResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/consolidation/intercompany/links/remove",
            body: request,
            requestOptions: requestOptions,
            responseType: IntercompanyLinksRemoveConsolidationResponse.self
        )
    }

    /// Intercompany reconciliation for a period: every issued intercompany sale invoice with its mirrored or manually recorded counterpart, unmatched documents on both sides, and per-currency totals with differences. Confirmed pairs are the basis for consolidation eliminations.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func intercompanyReport(request: Requests.IntercompanyReportConsolidationRequest, requestOptions: RequestOptions? = nil) async throws -> IntercompanyReportConsolidationResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/consolidation/intercompany/report",
            body: request,
            requestOptions: requestOptions,
            responseType: IntercompanyReportConsolidationResponse.self
        )
    }

    /// Consolidated financial statements of a group for a period in its presentation currency, with the consolidated trial balance and cash flow, each member's contribution and the intercompany candidates. Each member's balances are translated at the group owner's exchange rates of `toDate` and taken in full, in proportion to the ownership (`proportional`) or as an equity-method investment (`equity`); a fully consolidated member held below 100 % yields the non-controlling interest, and `eliminations` are amounts added to account codes before the statements are assembled (`balanced` tells whether they net to zero). Refused with 422 when the group has no members.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func report(request: Requests.ReportConsolidationRequest, requestOptions: RequestOptions? = nil) async throws -> ReportConsolidationResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/consolidation/report",
            body: request,
            requestOptions: requestOptions,
            responseType: ReportConsolidationResponse.self
        )
    }
}