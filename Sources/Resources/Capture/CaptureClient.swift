import Foundation

public final class CaptureClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Parse a capture received over Peppol from its stored document again and replace its draft (supplier, totals, lines, matched partner). Refused with 422 for a capture that was not received over Peppol and with 409 once the capture is linked to a purchase invoice.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func documentsExtract(request: Requests.DocumentsExtractCaptureRequest, requestOptions: RequestOptions? = nil) async throws -> DocumentsExtractCaptureResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/capture/documents/extract",
            body: request,
            requestOptions: requestOptions,
            responseType: DocumentsExtractCaptureResponse.self
        )
    }

    /// Return one document received over Peppol (a capture) with its draft: supplier, dates, totals and lines.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func documentsGet(request: Requests.DocumentsGetCaptureRequest, requestOptions: RequestOptions? = nil) async throws -> DocumentsGetCaptureResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/capture/documents/get",
            body: request,
            requestOptions: requestOptions,
            responseType: DocumentsGetCaptureResponse.self
        )
    }

    /// List the documents received over Peppol (captures) with their drafts. Filterable by `status`, `matchedPartnerId` and `purchaseInvoiceId`; sortable by `createdAt` and `updatedAt`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func documentsList(request: Requests.DocumentsListCaptureRequest, requestOptions: RequestOptions? = nil) async throws -> DocumentsListCaptureResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/capture/documents/list",
            body: request,
            requestOptions: requestOptions,
            responseType: DocumentsListCaptureResponse.self
        )
    }

    /// Delete a capture and its stored file (409 once it is linked to a purchase invoice).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func documentsDelete(request: Requests.DocumentsDeleteCaptureRequest, requestOptions: RequestOptions? = nil) async throws -> DocumentsDeleteCaptureResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/capture/documents/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: DocumentsDeleteCaptureResponse.self
        )
    }

    /// Creates the purchase invoice (or credit note, see `type`) from `lines`. Lines with the opposite sign go in `oppositeLines` and are saved as a second document of the opposite type for the same supplier: a purchase credit note against the new invoice, or a purchase invoice next to the new credit note. It is numbered `oppositeDocumentNumber`, by default the document number followed by "-CR" (credit note) or "-INV" (invoice).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func documentsConfirm(request: Requests.DocumentsConfirmCaptureRequest, requestOptions: RequestOptions? = nil) async throws -> DocumentsConfirmCaptureResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/capture/documents/confirm",
            body: request,
            requestOptions: requestOptions,
            responseType: DocumentsConfirmCaptureResponse.self
        )
    }
}