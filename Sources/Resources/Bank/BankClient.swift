import Foundation

public final class BankClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func accountsCreate(request: Requests.AccountsCreateBankRequest, requestOptions: RequestOptions? = nil) async throws -> AccountsCreateBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/accounts/create",
            body: request,
            requestOptions: requestOptions,
            responseType: AccountsCreateBankResponse.self
        )
    }

    public func accountsList(request: Requests.AccountsListBankRequest, requestOptions: RequestOptions? = nil) async throws -> AccountsListBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/accounts/list",
            body: request,
            requestOptions: requestOptions,
            responseType: AccountsListBankResponse.self
        )
    }

    public func accountsUpdate(request: Requests.AccountsUpdateBankRequest, requestOptions: RequestOptions? = nil) async throws -> AccountsUpdateBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/accounts/update",
            body: request,
            requestOptions: requestOptions,
            responseType: AccountsUpdateBankResponse.self
        )
    }

    public func transactionsImport(request: Requests.TransactionsImportBankRequest, requestOptions: RequestOptions? = nil) async throws -> TransactionsImportBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/transactions/import",
            body: request,
            requestOptions: requestOptions,
            responseType: TransactionsImportBankResponse.self
        )
    }

    public func statementsImport(request: Requests.StatementsImportBankRequest, requestOptions: RequestOptions? = nil) async throws -> StatementsImportBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/statements/import",
            body: request,
            requestOptions: requestOptions,
            responseType: StatementsImportBankResponse.self
        )
    }

    public func transactionsList(request: Requests.TransactionsListBankRequest, requestOptions: RequestOptions? = nil) async throws -> TransactionsListBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/transactions/list",
            body: request,
            requestOptions: requestOptions,
            responseType: TransactionsListBankResponse.self
        )
    }

    public func transactionsMatch(request: Requests.TransactionsMatchBankRequest, requestOptions: RequestOptions? = nil) async throws -> TransactionsMatchBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/transactions/match",
            body: request,
            requestOptions: requestOptions,
            responseType: TransactionsMatchBankResponse.self
        )
    }

    public func transactionsMatchMany(request: Requests.TransactionsMatchManyBankRequest, requestOptions: RequestOptions? = nil) async throws -> TransactionsMatchManyBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/transactions/match-many",
            body: request,
            requestOptions: requestOptions,
            responseType: TransactionsMatchManyBankResponse.self
        )
    }

    /// Undo a match. A payment matched to an invoice, or a line posted by an import template, gets a reversing journal transaction dated date (default: today) and the invoice paid amount and payment status are restored; a line linked to a payment-provider settlement is only unlinked. The line returns to status new.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func transactionsUnmatch(request: Requests.TransactionsUnmatchBankRequest, requestOptions: RequestOptions? = nil) async throws -> TransactionsUnmatchBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/transactions/unmatch",
            body: request,
            requestOptions: requestOptions,
            responseType: TransactionsUnmatchBankResponse.self
        )
    }

    public func transactionsRecord(request: Requests.TransactionsRecordBankRequest, requestOptions: RequestOptions? = nil) async throws -> TransactionsRecordBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/transactions/record",
            body: request,
            requestOptions: requestOptions,
            responseType: TransactionsRecordBankResponse.self
        )
    }

    public func paymentsExport(request: Requests.PaymentsExportBankRequest, requestOptions: RequestOptions? = nil) async throws -> PaymentsExportBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/payments/export",
            body: request,
            requestOptions: requestOptions,
            responseType: PaymentsExportBankResponse.self
        )
    }

    public func importTemplatesCreate(request: Requests.ImportTemplatesCreateBankRequest, requestOptions: RequestOptions? = nil) async throws -> ImportTemplatesCreateBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/import-templates/create",
            body: request,
            requestOptions: requestOptions,
            responseType: ImportTemplatesCreateBankResponse.self
        )
    }

    public func importTemplatesUpdate(request: Requests.ImportTemplatesUpdateBankRequest, requestOptions: RequestOptions? = nil) async throws -> ImportTemplatesUpdateBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/import-templates/update",
            body: request,
            requestOptions: requestOptions,
            responseType: ImportTemplatesUpdateBankResponse.self
        )
    }

    public func importTemplatesDelete(request: Requests.ImportTemplatesDeleteBankRequest, requestOptions: RequestOptions? = nil) async throws -> ImportTemplatesDeleteBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/import-templates/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: ImportTemplatesDeleteBankResponse.self
        )
    }

    public func importTemplatesGet(request: Requests.ImportTemplatesGetBankRequest, requestOptions: RequestOptions? = nil) async throws -> ImportTemplatesGetBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/import-templates/get",
            body: request,
            requestOptions: requestOptions,
            responseType: ImportTemplatesGetBankResponse.self
        )
    }

    public func importTemplatesList(request: Requests.ImportTemplatesListBankRequest, requestOptions: RequestOptions? = nil) async throws -> ImportTemplatesListBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/import-templates/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ImportTemplatesListBankResponse.self
        )
    }

    public func matchRulesCreate(request: Requests.MatchRulesCreateBankRequest, requestOptions: RequestOptions? = nil) async throws -> MatchRulesCreateBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/match-rules/create",
            body: request,
            requestOptions: requestOptions,
            responseType: MatchRulesCreateBankResponse.self
        )
    }

    public func matchRulesUpdate(request: Requests.MatchRulesUpdateBankRequest, requestOptions: RequestOptions? = nil) async throws -> MatchRulesUpdateBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/match-rules/update",
            body: request,
            requestOptions: requestOptions,
            responseType: MatchRulesUpdateBankResponse.self
        )
    }

    public func matchRulesDelete(request: Requests.MatchRulesDeleteBankRequest, requestOptions: RequestOptions? = nil) async throws -> MatchRulesDeleteBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/match-rules/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: MatchRulesDeleteBankResponse.self
        )
    }

    public func matchRulesList(request: Requests.MatchRulesListBankRequest, requestOptions: RequestOptions? = nil) async throws -> MatchRulesListBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/match-rules/list",
            body: request,
            requestOptions: requestOptions,
            responseType: MatchRulesListBankResponse.self
        )
    }

    public func mandatesCreate(request: Requests.MandatesCreateBankRequest, requestOptions: RequestOptions? = nil) async throws -> MandatesCreateBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/mandates/create",
            body: request,
            requestOptions: requestOptions,
            responseType: MandatesCreateBankResponse.self
        )
    }

    public func mandatesUpdate(request: Requests.MandatesUpdateBankRequest, requestOptions: RequestOptions? = nil) async throws -> MandatesUpdateBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/mandates/update",
            body: request,
            requestOptions: requestOptions,
            responseType: MandatesUpdateBankResponse.self
        )
    }

    public func mandatesCancel(request: Requests.MandatesCancelBankRequest, requestOptions: RequestOptions? = nil) async throws -> MandatesCancelBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/mandates/cancel",
            body: request,
            requestOptions: requestOptions,
            responseType: MandatesCancelBankResponse.self
        )
    }

    public func mandatesGet(request: Requests.MandatesGetBankRequest, requestOptions: RequestOptions? = nil) async throws -> MandatesGetBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/mandates/get",
            body: request,
            requestOptions: requestOptions,
            responseType: MandatesGetBankResponse.self
        )
    }

    public func mandatesList(request: Requests.MandatesListBankRequest, requestOptions: RequestOptions? = nil) async throws -> MandatesListBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/mandates/list",
            body: request,
            requestOptions: requestOptions,
            responseType: MandatesListBankResponse.self
        )
    }

    public func directDebitsCandidates(request: Requests.DirectDebitsCandidatesBankRequest, requestOptions: RequestOptions? = nil) async throws -> DirectDebitsCandidatesBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/direct-debits/candidates",
            body: request,
            requestOptions: requestOptions,
            responseType: DirectDebitsCandidatesBankResponse.self
        )
    }

    public func directDebitsExport(request: Requests.DirectDebitsExportBankRequest, requestOptions: RequestOptions? = nil) async throws -> DirectDebitsExportBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/direct-debits/export",
            body: request,
            requestOptions: requestOptions,
            responseType: DirectDebitsExportBankResponse.self
        )
    }

    public func transactionsSuggestMatches(request: Requests.TransactionsSuggestMatchesBankRequest, requestOptions: RequestOptions? = nil) async throws -> TransactionsSuggestMatchesBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/transactions/suggest-matches",
            body: request,
            requestOptions: requestOptions,
            responseType: TransactionsSuggestMatchesBankResponse.self
        )
    }

    public func settlementsImport(request: Requests.SettlementsImportBankRequest, requestOptions: RequestOptions? = nil) async throws -> SettlementsImportBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/settlements/import",
            body: request,
            requestOptions: requestOptions,
            responseType: SettlementsImportBankResponse.self
        )
    }

    public func settlementsList(request: Requests.SettlementsListBankRequest, requestOptions: RequestOptions? = nil) async throws -> SettlementsListBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/settlements/list",
            body: request,
            requestOptions: requestOptions,
            responseType: SettlementsListBankResponse.self
        )
    }

    public func settlementsGet(request: Requests.SettlementsGetBankRequest, requestOptions: RequestOptions? = nil) async throws -> SettlementsGetBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/settlements/get",
            body: request,
            requestOptions: requestOptions,
            responseType: SettlementsGetBankResponse.self
        )
    }

    public func settlementsMatch(request: Requests.SettlementsMatchBankRequest, requestOptions: RequestOptions? = nil) async throws -> SettlementsMatchBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/settlements/match",
            body: request,
            requestOptions: requestOptions,
            responseType: SettlementsMatchBankResponse.self
        )
    }

    /// A line with its own rate or amount is split with that value when the batch is posted. A line without one falls back to the commissionPercent given to the posting call, and without that the amount goes to the suspense account. Send both fields as null to clear the line back to the fallback.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func settlementsCommission(request: Requests.SettlementsCommissionBankRequest, requestOptions: RequestOptions? = nil) async throws -> SettlementsCommissionBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/settlements/commission",
            body: request,
            requestOptions: requestOptions,
            responseType: SettlementsCommissionBankResponse.self
        )
    }

    /// Attach the incoming bank-statement line that carries this payout to the settlement batch.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func settlementsLink(request: Requests.SettlementsLinkBankRequest, requestOptions: RequestOptions? = nil) async throws -> SettlementsLinkBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/settlements/link",
            body: request,
            requestOptions: requestOptions,
            responseType: SettlementsLinkBankResponse.self
        )
    }

    /// Detach the bank-statement line from the settlement batch and return the line to unmatched.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func settlementsUnlink(request: Requests.SettlementsUnlinkBankRequest, requestOptions: RequestOptions? = nil) async throws -> SettlementsUnlinkBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/settlements/unlink",
            body: request,
            requestOptions: requestOptions,
            responseType: SettlementsUnlinkBankResponse.self
        )
    }

    public func settlementsPost(request: Requests.SettlementsPostBankRequest, requestOptions: RequestOptions? = nil) async throws -> SettlementsPostBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/settlements/post",
            body: request,
            requestOptions: requestOptions,
            responseType: SettlementsPostBankResponse.self
        )
    }

    public func feedsBanksList(request: Requests.FeedsBanksListBankRequest, requestOptions: RequestOptions? = nil) async throws -> FeedsBanksListBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/feeds/banks/list",
            body: request,
            requestOptions: requestOptions,
            responseType: FeedsBanksListBankResponse.self
        )
    }

    public func feedsConnectionsStart(request: Requests.FeedsConnectionsStartBankRequest, requestOptions: RequestOptions? = nil) async throws -> FeedsConnectionsStartBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/feeds/connections/start",
            body: request,
            requestOptions: requestOptions,
            responseType: FeedsConnectionsStartBankResponse.self
        )
    }

    public func feedsConnectionsComplete(request: Requests.FeedsConnectionsCompleteBankRequest, requestOptions: RequestOptions? = nil) async throws -> FeedsConnectionsCompleteBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/feeds/connections/complete",
            body: request,
            requestOptions: requestOptions,
            responseType: FeedsConnectionsCompleteBankResponse.self
        )
    }

    public func feedsConnectionsGet(request: Requests.FeedsConnectionsGetBankRequest, requestOptions: RequestOptions? = nil) async throws -> FeedsConnectionsGetBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/feeds/connections/get",
            body: request,
            requestOptions: requestOptions,
            responseType: FeedsConnectionsGetBankResponse.self
        )
    }

    public func feedsConnectionsList(request: Requests.FeedsConnectionsListBankRequest, requestOptions: RequestOptions? = nil) async throws -> FeedsConnectionsListBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/feeds/connections/list",
            body: request,
            requestOptions: requestOptions,
            responseType: FeedsConnectionsListBankResponse.self
        )
    }

    public func feedsConnectionsDelete(request: Requests.FeedsConnectionsDeleteBankRequest, requestOptions: RequestOptions? = nil) async throws -> FeedsConnectionsDeleteBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/feeds/connections/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: FeedsConnectionsDeleteBankResponse.self
        )
    }

    public func feedsAccountsLink(request: Requests.FeedsAccountsLinkBankRequest, requestOptions: RequestOptions? = nil) async throws -> FeedsAccountsLinkBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/feeds/accounts/link",
            body: request,
            requestOptions: requestOptions,
            responseType: FeedsAccountsLinkBankResponse.self
        )
    }

    public func feedsAccountsConfigure(request: Requests.FeedsAccountsConfigureBankRequest, requestOptions: RequestOptions? = nil) async throws -> FeedsAccountsConfigureBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/feeds/accounts/configure",
            body: request,
            requestOptions: requestOptions,
            responseType: FeedsAccountsConfigureBankResponse.self
        )
    }

    public func feedsSync(request: Requests.FeedsSyncBankRequest, requestOptions: RequestOptions? = nil) async throws -> FeedsSyncBankResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/feeds/sync",
            body: request,
            requestOptions: requestOptions,
            responseType: FeedsSyncBankResponse.self
        )
    }
}