import Foundation

public final class BankClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func postV1BankAccountsCreate(request: Requests.PostV1BankAccountsCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1BankAccountsCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/accounts/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1BankAccountsCreateResponse.self
        )
    }

    public func postV1BankAccountsList(request: Requests.PostV1BankAccountsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1BankAccountsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/accounts/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1BankAccountsListResponse.self
        )
    }

    public func postV1BankAccountsUpdate(request: Requests.PostV1BankAccountsUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1BankAccountsUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/accounts/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1BankAccountsUpdateResponse.self
        )
    }

    public func postV1BankTransactionsImport(request: Requests.PostV1BankTransactionsImportRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1BankTransactionsImportResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/transactions/import",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1BankTransactionsImportResponse.self
        )
    }

    public func postV1BankStatementsImport(request: Requests.PostV1BankStatementsImportRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1BankStatementsImportResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/statements/import",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1BankStatementsImportResponse.self
        )
    }

    public func postV1BankTransactionsList(request: Requests.PostV1BankTransactionsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1BankTransactionsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/transactions/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1BankTransactionsListResponse.self
        )
    }

    public func postV1BankTransactionsMatch(request: Requests.PostV1BankTransactionsMatchRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1BankTransactionsMatchResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/transactions/match",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1BankTransactionsMatchResponse.self
        )
    }

    public func postV1BankPaymentsExport(request: Requests.PostV1BankPaymentsExportRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1BankPaymentsExportResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/payments/export",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1BankPaymentsExportResponse.self
        )
    }

    public func postV1BankMandatesCreate(request: Requests.PostV1BankMandatesCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1BankMandatesCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/mandates/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1BankMandatesCreateResponse.self
        )
    }

    public func postV1BankMandatesUpdate(request: Requests.PostV1BankMandatesUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1BankMandatesUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/mandates/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1BankMandatesUpdateResponse.self
        )
    }

    public func postV1BankMandatesCancel(request: Requests.PostV1BankMandatesCancelRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1BankMandatesCancelResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/mandates/cancel",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1BankMandatesCancelResponse.self
        )
    }

    public func postV1BankMandatesGet(request: Requests.PostV1BankMandatesGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1BankMandatesGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/mandates/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1BankMandatesGetResponse.self
        )
    }

    public func postV1BankMandatesList(request: Requests.PostV1BankMandatesListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1BankMandatesListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/mandates/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1BankMandatesListResponse.self
        )
    }

    public func postV1BankDirectDebitsExport(request: Requests.PostV1BankDirectDebitsExportRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1BankDirectDebitsExportResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/direct-debits/export",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1BankDirectDebitsExportResponse.self
        )
    }

    public func postV1BankTransactionsSuggestMatches(request: Requests.PostV1BankTransactionsSuggestMatchesRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1BankTransactionsSuggestMatchesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/transactions/suggest-matches",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1BankTransactionsSuggestMatchesResponse.self
        )
    }

    public func postV1BankSettlementsImport(request: Requests.PostV1BankSettlementsImportRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1BankSettlementsImportResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/settlements/import",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1BankSettlementsImportResponse.self
        )
    }

    public func postV1BankSettlementsList(request: Requests.PostV1BankSettlementsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1BankSettlementsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/settlements/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1BankSettlementsListResponse.self
        )
    }

    public func postV1BankSettlementsGet(request: Requests.PostV1BankSettlementsGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1BankSettlementsGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/settlements/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1BankSettlementsGetResponse.self
        )
    }

    public func postV1BankSettlementsMatch(request: Requests.PostV1BankSettlementsMatchRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1BankSettlementsMatchResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/settlements/match",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1BankSettlementsMatchResponse.self
        )
    }

    public func postV1BankSettlementsPost(request: Requests.PostV1BankSettlementsPostRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1BankSettlementsPostResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/settlements/post",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1BankSettlementsPostResponse.self
        )
    }

    public func listThePsd2BanksAspsPsAvailableToConnect(request: Requests.PostV1BankFeedsBanksListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1BankFeedsBanksListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/feeds/banks/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1BankFeedsBanksListResponse.self
        )
    }

    public func beginBankAuthorizationRedirectTheUserToTheReturnedUrl(request: Requests.PostV1BankFeedsConnectionsStartRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1BankFeedsConnectionsStartResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/feeds/connections/start",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1BankFeedsConnectionsStartResponse.self
        )
    }

    public func exchangeTheRedirectCodeForASessionAndStoreTheBankAccountsItExposes(request: Requests.PostV1BankFeedsConnectionsCompleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1BankFeedsConnectionsCompleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/feeds/connections/complete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1BankFeedsConnectionsCompleteResponse.self
        )
    }

    public func postV1BankFeedsConnectionsGet(request: Requests.PostV1BankFeedsConnectionsGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1BankFeedsConnectionsGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/feeds/connections/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1BankFeedsConnectionsGetResponse.self
        )
    }

    public func postV1BankFeedsConnectionsList(request: Requests.PostV1BankFeedsConnectionsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1BankFeedsConnectionsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/feeds/connections/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1BankFeedsConnectionsListResponse.self
        )
    }

    public func revokeTheConsentAtTheBankAndDropTheStoredConnection(request: Requests.PostV1BankFeedsConnectionsDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1BankFeedsConnectionsDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/feeds/connections/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1BankFeedsConnectionsDeleteResponse.self
        )
    }

    public func pointABankFeedAccountAtALedgerBankAccountSoItsTransactionsCanBeSynced(request: Requests.PostV1BankFeedsAccountsLinkRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1BankFeedsAccountsLinkResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/feeds/accounts/link",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1BankFeedsAccountsLinkResponse.self
        )
    }

    public func pullNewTransactionsFromTheBankIntoTheLedgerEmitsBankFeedSynced(request: Requests.PostV1BankFeedsSyncRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1BankFeedsSyncResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/bank/feeds/sync",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1BankFeedsSyncResponse.self
        )
    }
}