import Foundation

public final class ReviewClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Read-only. Lists, each with its `kind`, the `id` of the record, a `message` and the `fix` (the call or field that resolves it): `draft_warning` (a draft purchase or sale document with a warning of `purchases/invoices/create` or `sales/invoices/create`, one item per warning, with its `code`), `bank_transaction_unbooked` (a bank line with the status `new`), `partner_vat_invalid` (a partner whose VAT number failed its VIES check) and `filing_settings_missing` (a filing due in the window of `account/companies/context` whose settings are missing, with the `declarations/configs/update` call; the id is the calendar key) and `file_unattached` (a file stored with `files/upload` or an upload link without `entityId` and not yet given as a document of a record, such as a document no other call fits). Each kind lists at most 200 records, the newest first. An empty list means nothing needs a look.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func queueList(request: Requests.QueueListReviewRequest, requestOptions: RequestOptions? = nil) async throws -> QueueListReviewResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/review/queue/list",
            body: request,
            requestOptions: requestOptions,
            responseType: QueueListReviewResponse.self
        )
    }
}