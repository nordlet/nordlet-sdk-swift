import Foundation

public final class MigrationClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Runs every check the import runs (accounts, partners, balances, open invoices, assets, stock) and returns the same summary and warnings, then rolls everything back. Nothing is stored.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func booksValidate(request: Requests.BooksValidateMigrationRequest, requestOptions: RequestOptions? = nil) async throws -> BooksValidateMigrationResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/migration/books/validate",
            body: request,
            requestOptions: requestOptions,
            responseType: BooksValidateMigrationResponse.self
        )
    }

    /// Brings a company over from another system in one call: chart of accounts, partners, items, opening balances (or the full journal history), open customer and supplier invoices, fixed assets with their accumulated depreciation, and stock on hand. The whole package is written in one database transaction - if any row fails, nothing is stored.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func booksImport(request: Requests.BooksImportMigrationRequest, requestOptions: RequestOptions? = nil) async throws -> BooksImportMigrationResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/migration/books/import",
            body: request,
            requestOptions: requestOptions,
            responseType: BooksImportMigrationResponse.self
        )
    }
}