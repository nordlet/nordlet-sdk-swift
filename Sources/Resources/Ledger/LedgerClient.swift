import Foundation

public final class LedgerClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func postV1LedgerAccountsList(request: Requests.PostV1LedgerAccountsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1LedgerAccountsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/accounts/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1LedgerAccountsListResponse.self
        )
    }

    public func postV1LedgerAccountsCreate(request: Requests.PostV1LedgerAccountsCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1LedgerAccountsCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/accounts/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1LedgerAccountsCreateResponse.self
        )
    }

    public func postV1LedgerAccountsUpdate(request: Requests.PostV1LedgerAccountsUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1LedgerAccountsUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/accounts/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1LedgerAccountsUpdateResponse.self
        )
    }

    public func postV1LedgerAccountsApplyTemplate(request: Requests.PostV1LedgerAccountsApplyTemplateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1LedgerAccountsApplyTemplateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/accounts/apply-template",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1LedgerAccountsApplyTemplateResponse.self
        )
    }

    /// Replaces the seeded chart with the chart template of the company country (the Romanian general chart for a company registered in Romania, the Lithuanian standard chart otherwise) and switches the posting defaults with it. Answers 409 when the company already uses that chart, has journal entries, holds accounts created by hand, or has settings that name an account the new chart does not have.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func moveACompanyThatHasPostedNothingYetToTheChartOfAccountsOfItsCountry(request: Requests.PostV1LedgerAccountsSwitchChartRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1LedgerAccountsSwitchChartResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/accounts/switch-chart",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1LedgerAccountsSwitchChartResponse.self
        )
    }

    public func postV1LedgerPeriodsList(request: Requests.PostV1LedgerPeriodsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1LedgerPeriodsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/periods/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1LedgerPeriodsListResponse.self
        )
    }

    public func postV1LedgerPeriodsLock(request: Requests.PostV1LedgerPeriodsLockRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1LedgerPeriodsLockResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/periods/lock",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1LedgerPeriodsLockResponse.self
        )
    }

    public func postV1LedgerPeriodsUnlock(request: Requests.PostV1LedgerPeriodsUnlockRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1LedgerPeriodsUnlockResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/periods/unlock",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1LedgerPeriodsUnlockResponse.self
        )
    }

    public func postV1LedgerJournalTransactionsList(request: Requests.PostV1LedgerJournalTransactionsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1LedgerJournalTransactionsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/journal/transactions/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1LedgerJournalTransactionsListResponse.self
        )
    }

    public func postV1LedgerCostCentersCreate(request: Requests.PostV1LedgerCostCentersCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1LedgerCostCentersCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/cost-centers/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1LedgerCostCentersCreateResponse.self
        )
    }

    public func postV1LedgerCostCentersUpdate(request: Requests.PostV1LedgerCostCentersUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1LedgerCostCentersUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/cost-centers/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1LedgerCostCentersUpdateResponse.self
        )
    }

    public func postV1LedgerCostCentersList(request: Requests.PostV1LedgerCostCentersListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1LedgerCostCentersListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/cost-centers/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1LedgerCostCentersListResponse.self
        )
    }

    public func postV1LedgerCostCenterGroupsCreate(request: Requests.PostV1LedgerCostCenterGroupsCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1LedgerCostCenterGroupsCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/cost-center-groups/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1LedgerCostCenterGroupsCreateResponse.self
        )
    }

    public func postV1LedgerCostCenterGroupsUpdate(request: Requests.PostV1LedgerCostCenterGroupsUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1LedgerCostCenterGroupsUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/cost-center-groups/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1LedgerCostCenterGroupsUpdateResponse.self
        )
    }

    public func postV1LedgerCostCenterGroupsDelete(request: Requests.PostV1LedgerCostCenterGroupsDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1LedgerCostCenterGroupsDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/cost-center-groups/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1LedgerCostCenterGroupsDeleteResponse.self
        )
    }

    public func postV1LedgerCostCenterGroupsList(request: Requests.PostV1LedgerCostCenterGroupsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1LedgerCostCenterGroupsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/cost-center-groups/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1LedgerCostCenterGroupsListResponse.self
        )
    }

    public func postV1LedgerPostingRulesList(request: Requests.PostV1LedgerPostingRulesListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1LedgerPostingRulesListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/posting-rules/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1LedgerPostingRulesListResponse.self
        )
    }

    public func postV1LedgerPostingRulesUpdate(request: Requests.PostV1LedgerPostingRulesUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1LedgerPostingRulesUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/posting-rules/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1LedgerPostingRulesUpdateResponse.self
        )
    }

    public func postV1LedgerOwnersCreate(request: Requests.PostV1LedgerOwnersCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1LedgerOwnersCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/owners/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1LedgerOwnersCreateResponse.self
        )
    }

    public func postV1LedgerOwnersUpdate(request: Requests.PostV1LedgerOwnersUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1LedgerOwnersUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/owners/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1LedgerOwnersUpdateResponse.self
        )
    }

    public func postV1LedgerOwnersDelete(request: Requests.PostV1LedgerOwnersDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1LedgerOwnersDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/owners/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1LedgerOwnersDeleteResponse.self
        )
    }

    public func postV1LedgerOwnersList(request: Requests.PostV1LedgerOwnersListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1LedgerOwnersListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/owners/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1LedgerOwnersListResponse.self
        )
    }

    public func postV1LedgerJournalTransactionsGet(request: Requests.PostV1LedgerJournalTransactionsGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1LedgerJournalTransactionsGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/journal/transactions/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1LedgerJournalTransactionsGetResponse.self
        )
    }

    public func postV1LedgerJournalTransactionsCreate(request: Requests.PostV1LedgerJournalTransactionsCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1LedgerJournalTransactionsCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/journal/transactions/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1LedgerJournalTransactionsCreateResponse.self
        )
    }

    /// The rows or codes of each return or registry deposit of the company country that are filled from account balances. Accounts fall into a row by the layout defaults for the standard chart of accounts unless mapped under Settings → Statement rows.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func nationalStatementLayoutsAvailableToTheCompany(request: Requests.PostV1LedgerStatementRowsSchemesRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1LedgerStatementRowsSchemesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/statement-rows/schemes",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1LedgerStatementRowsSchemesResponse.self
        )
    }

    public func accountsPlacedOnTheRowsOfAStatementLayoutWithTheRowTotalsOfAPeriod(request: Requests.PostV1LedgerStatementRowsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1LedgerStatementRowsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/statement-rows/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1LedgerStatementRowsListResponse.self
        )
    }

    /// A mapping on a code prefix covers every account whose code starts with it; the longest matching prefix wins. An empty rowCode removes the mapping so the layout default applies again.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func mapAnAccountOrAnAccountCodePrefixToARowOfAStatementLayout(request: Requests.PostV1LedgerStatementRowsSetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1LedgerStatementRowsSetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/statement-rows/set",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1LedgerStatementRowsSetResponse.self
        )
    }

    /// Directors, board members, the company secretary, representatives and liquidators, with their personal identifier, appointment and resignation dates and whether they sign the annual accounts. Annual returns and registry deposits are built from this register.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func officersOfTheCompany(request: Requests.PostV1OfficersListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1OfficersListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/officers/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1OfficersListResponse.self
        )
    }

    public func recordAnOfficerOfTheCompany(request: Requests.PostV1OfficersCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1OfficersCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/officers/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1OfficersCreateResponse.self
        )
    }

    public func changeARecordedOfficer(request: Requests.PostV1OfficersUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1OfficersUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/officers/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1OfficersUpdateResponse.self
        )
    }

    public func removeARecordedOfficer(request: Requests.PostV1OfficersDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1OfficersDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/officers/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1OfficersDeleteResponse.self
        )
    }
}