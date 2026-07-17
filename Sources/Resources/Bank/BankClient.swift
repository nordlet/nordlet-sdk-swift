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
}