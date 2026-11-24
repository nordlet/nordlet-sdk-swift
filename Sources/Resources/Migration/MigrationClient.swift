import Foundation

public final class MigrationClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Runs every check the import runs (accounts, partners, balances, open invoices, assets, stock) and returns the same summary and warnings, then rolls everything back. Nothing is stored. When the package has problems in several rows of `journal`, `openReceivables`, `openPayables`, `fixedAssets` or `stock`, the 422 lists every one of them, each under its row (`journal[2]`) in `fieldErrors`; a problem in `accounts`, `partners`, `items`, `assetGroups`, `openingBalances` or the package as a whole is reported alone, because the rows after it depend on it.
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

    /// Brings a company over from another system in one call: chart of accounts, partners, items, opening balances (or the full journal history), open customer and supplier invoices, fixed assets with their accumulated depreciation, and stock on hand. The numbering of the open customer invoices continues: each series and year starts after its highest number, and a company without `invoicePrefix` takes the series of the latest open invoice, so `sales/invoices/issue` numbers the next invoice in it. The whole package is written in one database transaction - if any row fails, nothing is stored.
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