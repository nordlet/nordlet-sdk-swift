import Foundation

public final class LedgerClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Lists the company's chart of accounts. Filterable by `code`, `name`, `type` and `isPostable`; sortable by `code`, `name`, `type` and `isPostable`. A `name` filter with `contains` matches the stored name and the name shown in the language of the request (`displayName`).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func accountsList(request: Requests.AccountsListLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> AccountsListLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/accounts/list",
            body: request,
            requestOptions: requestOptions,
            responseType: AccountsListLedgerResponse.self
        )
    }

    /// Adds an account to the company's chart of accounts. `parentId` must name an account of the same company. Answers 409 when an account with the same `code` already exists.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func accountsCreate(request: Requests.AccountsCreateLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> AccountsCreateLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/accounts/create",
            body: request,
            requestOptions: requestOptions,
            responseType: AccountsCreateLedgerResponse.self
        )
    }

    /// Changes the name, parent or postability of an account; the code and type cannot be changed. An account cannot be its own parent.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func accountsUpdate(request: Requests.AccountsUpdateLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> AccountsUpdateLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/accounts/update",
            body: request,
            requestOptions: requestOptions,
            responseType: AccountsUpdateLedgerResponse.self
        )
    }

    /// Adds the accounts of the company's chart template that the chart does not have yet (an account whose code already exists is not replaced) and sets the parent links the template defines. Returns the number of accounts in the chart afterwards.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func accountsApplyTemplate(request: Requests.AccountsApplyTemplateLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> AccountsApplyTemplateLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/accounts/apply-template",
            body: request,
            requestOptions: requestOptions,
            responseType: AccountsApplyTemplateLedgerResponse.self
        )
    }

    /// Replaces the seeded chart with the chart template of the company country (the Romanian general chart for a company registered in Romania, the Estonian e-arveldaja chart for a company registered in Estonia, the Lithuanian standard chart otherwise) and switches the posting defaults with it. Answers 409 when the company already uses that chart, has journal entries, holds accounts created by hand, or has settings that name an account the new chart does not have.
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

    /// Lists the company's accounting periods with their `open` or `locked` status. Filterable by `year`, `month` and `status`; sortable by `year` and `month`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func periodsList(request: Requests.PeriodsListLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> PeriodsListLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/periods/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PeriodsListLedgerResponse.self
        )
    }

    /// Locks the month so that postings dated in it are refused with 409 (`ledger/journal/transactions/create`, `cash/orders/create` and `cash/expense-reports/create` among them). Before locking a month that is not locked yet, posts the pending ratable revenue recognition tranches scheduled up to the month end and emits `revenue_recognition.posted` when there were any; when the month is the company's fiscal year end and no year-end close is posted for that year, posts the year-end close that moves the income and expense balances of the fiscal year to the retained earnings account (posting rule `closing.retainedEarnings`). The lock is not refused for open items: `warnings` lists them as `reports/period-checklist` does, for the month, or for the fiscal year when the month is the fiscal year end.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func periodsLock(request: Requests.PeriodsLockLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> PeriodsLockLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/periods/lock",
            body: request,
            requestOptions: requestOptions,
            responseType: PeriodsLockLedgerResponse.self
        )
    }

    /// Opens the month for posting again. When the month is the company's fiscal year end and a year-end close is posted for it, posts a reversal of that close dated the same day.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func periodsUnlock(request: Requests.PeriodsUnlockLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> PeriodsUnlockLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/periods/unlock",
            body: request,
            requestOptions: requestOptions,
            responseType: PeriodsUnlockLedgerResponse.self
        )
    }

    /// Lists journal transactions with the partner name. Filterable by `date`, `status`, `documentType`, `partnerId` and `documentId`; sortable by `date`, `createdAt`, `description`, `partnerName` (the name of the partner), `documentType` and `status`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func journalTransactionsList(request: Requests.JournalTransactionsListLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> JournalTransactionsListLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/journal/transactions/list",
            body: request,
            requestOptions: requestOptions,
            responseType: JournalTransactionsListLedgerResponse.self
        )
    }

    /// Creates a cost center, optionally inside a cost center group. Answers 409 when the `code` is already used.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func costCentersCreate(request: Requests.CostCentersCreateLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> CostCentersCreateLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/cost-centers/create",
            body: request,
            requestOptions: requestOptions,
            responseType: CostCentersCreateLedgerResponse.self
        )
    }

    /// Changes the name, group or active flag of a cost center. An inactive cost center is refused on new manual journal entries (`ledger/journal/transactions/create` answers 422).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func costCentersUpdate(request: Requests.CostCentersUpdateLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> CostCentersUpdateLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/cost-centers/update",
            body: request,
            requestOptions: requestOptions,
            responseType: CostCentersUpdateLedgerResponse.self
        )
    }

    /// Lists cost centers with their group name. Filterable by `code`, `name`, `isActive` and `groupId`; sortable by `code`, `name` and `createdAt`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func costCentersList(request: Requests.CostCentersListLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> CostCentersListLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/cost-centers/list",
            body: request,
            requestOptions: requestOptions,
            responseType: CostCentersListLedgerResponse.self
        )
    }

    /// Creates a cost center group. Answers 409 when the `code` is already used.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func costCenterGroupsCreate(request: Requests.CostCenterGroupsCreateLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> CostCenterGroupsCreateLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/cost-center-groups/create",
            body: request,
            requestOptions: requestOptions,
            responseType: CostCenterGroupsCreateLedgerResponse.self
        )
    }

    /// Changes the code or name of a cost center group. Answers 409 when the new code is already used.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func costCenterGroupsUpdate(request: Requests.CostCenterGroupsUpdateLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> CostCenterGroupsUpdateLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/cost-center-groups/update",
            body: request,
            requestOptions: requestOptions,
            responseType: CostCenterGroupsUpdateLedgerResponse.self
        )
    }

    /// Deletes a cost center group. Answers 409 while cost centers are still assigned to it.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func costCenterGroupsDelete(request: Requests.CostCenterGroupsDeleteLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> CostCenterGroupsDeleteLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/cost-center-groups/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: CostCenterGroupsDeleteLedgerResponse.self
        )
    }

    /// Lists cost center groups. Filterable and sortable by `code` and `name`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func costCenterGroupsList(request: Requests.CostCenterGroupsListLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> CostCenterGroupsListLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/cost-center-groups/list",
            body: request,
            requestOptions: requestOptions,
            responseType: CostCenterGroupsListLedgerResponse.self
        )
    }

    /// Lists every posting rule with its default account code on the company's chart template, the account code in effect and whether the company has overridden it.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postingRulesList(request: Requests.PostingRulesListLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> PostingRulesListLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/posting-rules/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostingRulesListLedgerResponse.self
        )
    }

    /// Overrides the account code of one or more posting rules; an `accountCode` of null removes the override and the chart default applies again. Every code given must be a postable account of the company's chart, else 422.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postingRulesUpdate(request: Requests.PostingRulesUpdateLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> PostingRulesUpdateLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/posting-rules/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostingRulesUpdateLedgerResponse.self
        )
    }

    /// Adds an owner of the company. `equityAccountCode` defaults to the share capital account of the company's chart; a code that is not in the chart of accounts answers 422.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ownersCreate(request: Requests.OwnersCreateLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> OwnersCreateLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/owners/create",
            body: request,
            requestOptions: requestOptions,
            responseType: OwnersCreateLedgerResponse.self
        )
    }

    /// Changes the fields of an owner. An `equityAccountCode` that is not in the chart of accounts answers 422.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ownersUpdate(request: Requests.OwnersUpdateLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> OwnersUpdateLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/owners/update",
            body: request,
            requestOptions: requestOptions,
            responseType: OwnersUpdateLedgerResponse.self
        )
    }

    /// Deletes an owner.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ownersDelete(request: Requests.OwnersDeleteLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> OwnersDeleteLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/owners/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: OwnersDeleteLedgerResponse.self
        )
    }

    /// Lists the company's owners. Filterable by `name` and `code`; sortable by `name`, `createdAt`, `code`, `sharesQuantity`, `sharesAmount`, `sharesType`, `sharesAcquisitionDate`, `partnerLiability` and `withholdingTaxPercent`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ownersList(request: Requests.OwnersListLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> OwnersListLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/owners/list",
            body: request,
            requestOptions: requestOptions,
            responseType: OwnersListLedgerResponse.self
        )
    }

    /// Returns a journal transaction with its entries, ordered by account code. `reversedByTransactionId` is the transaction posted by `ledger/journal/transactions/reverse` for a manual transaction, else null.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func journalTransactionsGet(request: Requests.JournalTransactionsGetLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> JournalTransactionsGetLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/journal/transactions/get",
            body: request,
            requestOptions: requestOptions,
            responseType: JournalTransactionsGetLedgerResponse.self
        )
    }

    /// Posts a manual journal transaction (`documentType` `manual`, status `posted`) in the company's base currency. Every `accountCode` must be a postable account of the chart, cost centers must exist and be active, projects must exist, an entry `partnerId` must be a partner of the company (422), and the debits must equal the credits. An entry with a `partnerId` on the receivable or payable account (posting rules `sales.receivable`, `purchases.payables`) is counted by `reports/partner-balances` and `reports/debt-aging`. Answers 422 for an unknown or non-postable account, an unknown cost center or project, debits that differ from the credits, an amount that is not whole cents (a third or fourth decimal other than zero; `10.5000` is accepted), for a `currency` other than the base currency and for an inactive cost center, and 409 when the accounting period of `date` is locked.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func journalTransactionsCreate(request: Requests.JournalTransactionsCreateLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> JournalTransactionsCreateLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/journal/transactions/create",
            body: request,
            requestOptions: requestOptions,
            responseType: JournalTransactionsCreateLedgerResponse.self
        )
    }

    /// Posts a journal transaction (`documentType` `manual_reversal`, `documentId` the original) dated `date` (default the original date) whose entries mirror the original's (debits and credits swapped). Only a `manual` transaction or a `tax_provision` (posted by `ledger/tax-provision/post`) is reversed here; a transaction posted by a document is reversed through that document. Answers 409 when the transaction is neither, when it is already reversed and when the accounting period of `date` is locked, and 400 when `date` is before the original date.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func journalTransactionsReverse(request: Requests.JournalTransactionsReverseLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> JournalTransactionsReverseLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/journal/transactions/reverse",
            body: request,
            requestOptions: requestOptions,
            responseType: JournalTransactionsReverseLedgerResponse.self
        )
    }

    /// Revalues the open sale and purchase documents in a currency other than the base currency (open amount at `date`, payments up to `date` deducted) and the balances of the foreign-currency bank accounts at the stored exchange rate of `date` against the rate of each document or the booked base balance, and posts one journal transaction dated `date` (`documentType` `fx_revaluation`): the difference on each receivable or payable account with the partner on the entry, and the unrealised gain or loss on the `bank.fxUnrealisedGain` and `bank.fxUnrealisedLoss` posting rule accounts. A second transaction (`documentType` `fx_revaluation_reversal`) reverses it on the next calendar day. Nothing is posted and `runId` is null when nothing differs. The payment match keeps booking the realised difference against the rate of the document. Runs only on request, once per `date`: 409 when `date` is already revalued (reverse that run first) and when `date` or the next day is in a locked accounting period; 422 when a stored rate is missing.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func fxRevaluationRun(request: Requests.FxRevaluationRunLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> FxRevaluationRunLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/fx-revaluation/run",
            body: request,
            requestOptions: requestOptions,
            responseType: FxRevaluationRunLedgerResponse.self
        )
    }

    /// Cancels the run `id` of `ledger/fx-revaluation/run`: posts a mirror of the revaluation transaction on the run date (`documentType` `fx_revaluation_undo`) and a mirror of its next-day reversal on the reversal date (`documentType` `fx_revaluation_undo_reversal`), so the net effect is zero, and frees the date for a new run. Answers 404 for an unknown run, 409 when the run is already reversed or when the run date or the next day is in a locked accounting period.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func fxRevaluationReverse(request: Requests.FxRevaluationReverseLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> FxRevaluationReverseLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/fx-revaluation/reverse",
            body: request,
            requestOptions: requestOptions,
            responseType: FxRevaluationReverseLedgerResponse.self
        )
    }

    /// Posts a journal transaction (`documentType` `accrual`) dated `date` from `lines` (each line either a debit or a credit, whole cents, balanced; an optional `partnerId` is counted by the partner reports on the receivable and payable accounts) and a mirror transaction (`documentType` `accrual_reversal`, `documentId` the accrual) dated the first day of the next month. 422 for an unknown or non-postable account, an unknown partner, an unbalanced or one-sided line; 409 when the accounting period of `date` or of the reversal date is locked.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func accrualsCreate(request: Requests.AccrualsCreateLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> AccrualsCreateLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/accruals/create",
            body: request,
            requestOptions: requestOptions,
            responseType: AccrualsCreateLedgerResponse.self
        )
    }

    /// Posts a journal transaction (`documentType` `tax_provision`, `documentId` the fiscal year) dated the last day of the fiscal year `fiscalYear`: debit the `tax.corporateExpense` posting rule account, credit `tax.corporatePayable`. `amount` defaults to the tax payable of the year's corporate tax return for Lithuanian (PLN204) and Romanian (D101) companies; for other countries it is required (422). 422 when the amount is zero or not whole cents; 409 when the accounting period is locked and when the year already has a provision that is not reversed (reverse it with `ledger/journal/transactions/reverse`).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func taxProvisionPost(request: Requests.TaxProvisionPostLedgerRequest, requestOptions: RequestOptions? = nil) async throws -> TaxProvisionPostLedgerResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/ledger/tax-provision/post",
            body: request,
            requestOptions: requestOptions,
            responseType: TaxProvisionPostLedgerResponse.self
        )
    }

    /// The rows or codes of each return or registry deposit of the company country that are filled from account balances. Accounts fall into a row by the layout defaults for the standard chart of accounts unless mapped under Account → Statement rows.
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

    /// Every postable account of the company with the row of `scheme` it falls into, by a mapping (`ledger/statement-rows/set`) or by the layout default, and the amount it carries there: the balance up to `toDate` on a balance-sheet row, the movement from `fromDate` to `toDate` on an income-statement row. `toDate` defaults to today and `fromDate` to 1 January of that year. `rows` holds the row totals and `unmapped` the accounts with a balance but no row.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
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