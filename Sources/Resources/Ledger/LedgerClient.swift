import Foundation

public final class LedgerClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func accountsList(request: Requests.AccountsListLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> AccountsListLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/accounts/list",
            body: request,
            requestOptions: requestOptions,
            responseType: AccountsListLedgerResponse.self
        )
    }

    public func accountsCreate(request: Requests.AccountsCreateLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> AccountsCreateLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/accounts/create",
            body: request,
            requestOptions: requestOptions,
            responseType: AccountsCreateLedgerResponse.self
        )
    }

    public func accountsUpdate(request: Requests.AccountsUpdateLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> AccountsUpdateLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/accounts/update",
            body: request,
            requestOptions: requestOptions,
            responseType: AccountsUpdateLedgerResponse.self
        )
    }

    public func accountsApplyTemplate(request: Requests.AccountsApplyTemplateLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> AccountsApplyTemplateLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/accounts/apply-template",
            body: request,
            requestOptions: requestOptions,
            responseType: AccountsApplyTemplateLedgerResponse.self
        )
    }

    /// Replaces the seeded chart with the chart template of the company country (the Romanian general chart for a company registered in Romania, the Lithuanian standard chart otherwise) and switches the posting defaults with it. Answers 409 when the company already uses that chart, has journal entries, holds accounts created by hand, or has settings that name an account the new chart does not have.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func accountsSwitchChart(request: Requests.AccountsSwitchChartLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> AccountsSwitchChartLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/accounts/switch-chart",
            body: request,
            requestOptions: requestOptions,
            responseType: AccountsSwitchChartLedgerResponse.self
        )
    }

    public func periodsList(request: Requests.PeriodsListLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> PeriodsListLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/periods/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PeriodsListLedgerResponse.self
        )
    }

    public func periodsLock(request: Requests.PeriodsLockLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> PeriodsLockLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/periods/lock",
            body: request,
            requestOptions: requestOptions,
            responseType: PeriodsLockLedgerResponse.self
        )
    }

    public func periodsUnlock(request: Requests.PeriodsUnlockLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> PeriodsUnlockLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/periods/unlock",
            body: request,
            requestOptions: requestOptions,
            responseType: PeriodsUnlockLedgerResponse.self
        )
    }

    public func journalTransactionsList(request: Requests.JournalTransactionsListLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> JournalTransactionsListLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/journal/transactions/list",
            body: request,
            requestOptions: requestOptions,
            responseType: JournalTransactionsListLedgerResponse.self
        )
    }

    public func costCentersCreate(request: Requests.CostCentersCreateLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> CostCentersCreateLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/cost-centers/create",
            body: request,
            requestOptions: requestOptions,
            responseType: CostCentersCreateLedgerResponse.self
        )
    }

    public func costCentersUpdate(request: Requests.CostCentersUpdateLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> CostCentersUpdateLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/cost-centers/update",
            body: request,
            requestOptions: requestOptions,
            responseType: CostCentersUpdateLedgerResponse.self
        )
    }

    public func costCentersList(request: Requests.CostCentersListLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> CostCentersListLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/cost-centers/list",
            body: request,
            requestOptions: requestOptions,
            responseType: CostCentersListLedgerResponse.self
        )
    }

    public func costCenterGroupsCreate(request: Requests.CostCenterGroupsCreateLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> CostCenterGroupsCreateLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/cost-center-groups/create",
            body: request,
            requestOptions: requestOptions,
            responseType: CostCenterGroupsCreateLedgerResponse.self
        )
    }

    public func costCenterGroupsUpdate(request: Requests.CostCenterGroupsUpdateLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> CostCenterGroupsUpdateLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/cost-center-groups/update",
            body: request,
            requestOptions: requestOptions,
            responseType: CostCenterGroupsUpdateLedgerResponse.self
        )
    }

    public func costCenterGroupsDelete(request: Requests.CostCenterGroupsDeleteLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> CostCenterGroupsDeleteLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/cost-center-groups/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: CostCenterGroupsDeleteLedgerResponse.self
        )
    }

    public func costCenterGroupsList(request: Requests.CostCenterGroupsListLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> CostCenterGroupsListLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/cost-center-groups/list",
            body: request,
            requestOptions: requestOptions,
            responseType: CostCenterGroupsListLedgerResponse.self
        )
    }

    public func postingRulesList(request: Requests.PostingRulesListLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> PostingRulesListLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/posting-rules/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostingRulesListLedgerResponse.self
        )
    }

    public func postingRulesUpdate(request: Requests.PostingRulesUpdateLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> PostingRulesUpdateLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/posting-rules/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostingRulesUpdateLedgerResponse.self
        )
    }

    public func ownersCreate(request: Requests.OwnersCreateLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> OwnersCreateLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/owners/create",
            body: request,
            requestOptions: requestOptions,
            responseType: OwnersCreateLedgerResponse.self
        )
    }

    public func ownersUpdate(request: Requests.OwnersUpdateLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> OwnersUpdateLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/owners/update",
            body: request,
            requestOptions: requestOptions,
            responseType: OwnersUpdateLedgerResponse.self
        )
    }

    public func ownersDelete(request: Requests.OwnersDeleteLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> OwnersDeleteLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/owners/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: OwnersDeleteLedgerResponse.self
        )
    }

    public func ownersList(request: Requests.OwnersListLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> OwnersListLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/owners/list",
            body: request,
            requestOptions: requestOptions,
            responseType: OwnersListLedgerResponse.self
        )
    }

    public func journalTransactionsGet(request: Requests.JournalTransactionsGetLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> JournalTransactionsGetLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/journal/transactions/get",
            body: request,
            requestOptions: requestOptions,
            responseType: JournalTransactionsGetLedgerResponse.self
        )
    }

    public func journalTransactionsCreate(request: Requests.JournalTransactionsCreateLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> JournalTransactionsCreateLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/journal/transactions/create",
            body: request,
            requestOptions: requestOptions,
            responseType: JournalTransactionsCreateLedgerResponse.self
        )
    }

    /// The rows or codes of each return or registry deposit of the company country that are filled from account balances. Accounts fall into a row by the layout defaults for the standard chart of accounts unless mapped under Settings → Statement rows.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func statementRowsSchemes(request: Requests.StatementRowsSchemesLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> StatementRowsSchemesLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/statement-rows/schemes",
            body: request,
            requestOptions: requestOptions,
            responseType: StatementRowsSchemesLedgerResponse.self
        )
    }

    public func statementRowsList(request: Requests.StatementRowsListLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> StatementRowsListLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/statement-rows/list",
            body: request,
            requestOptions: requestOptions,
            responseType: StatementRowsListLedgerResponse.self
        )
    }

    /// A mapping on a code prefix covers every account whose code starts with it; the longest matching prefix wins. An empty rowCode removes the mapping so the layout default applies again.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func statementRowsSet(request: Requests.StatementRowsSetLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> StatementRowsSetLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/statement-rows/set",
            body: request,
            requestOptions: requestOptions,
            responseType: StatementRowsSetLedgerResponse.self
        )
    }
}