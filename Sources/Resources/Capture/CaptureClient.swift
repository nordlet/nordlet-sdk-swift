import Foundation

public final class CaptureClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Return the company's document capture settings: whether intake by e-mail is enabled, whether e-mailed documents are read on arrival, the company's intake e-mail address and whether a reading provider is configured. The intake token behind the address is created on the first call.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func settingsGet(request: Requests.SettingsGetCaptureRequest, requestOptions: RequestOptions? = nil) async throws -> SettingsGetCaptureResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/capture/settings/get",
            body: request,
            requestOptions: requestOptions,
            responseType: SettingsGetCaptureResponse.self
        )
    }

    /// Switch `intakeEnabled` (documents sent to the intake address are accepted) and `captureAutoExtract` (they are read on arrival) on or off; at least one field is required.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func settingsUpdate(request: Requests.SettingsUpdateCaptureRequest, requestOptions: RequestOptions? = nil) async throws -> SettingsUpdateCaptureResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/capture/settings/update",
            body: request,
            requestOptions: requestOptions,
            responseType: SettingsUpdateCaptureResponse.self
        )
    }

    /// Replace the company's intake token, so the previous intake e-mail address stops working and the settings come back with the new one.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func settingsRegenerateIntake(request: Requests.SettingsRegenerateIntakeCaptureRequest, requestOptions: RequestOptions? = nil) async throws -> SettingsRegenerateIntakeCaptureResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/capture/settings/regenerate-intake",
            body: request,
            requestOptions: requestOptions,
            responseType: SettingsRegenerateIntakeCaptureResponse.self
        )
    }

    /// Endpoint for the inbound e-mail provider (Postmark field names or the generic `to`, `from`, `subject` and `attachments` form). It needs the `x-inbound-secret` header and finds the company by the `intake+<token>@` recipient address (404 when unknown, 403 when intake is disabled). Every PDF, image, Word or PowerPoint attachment up to 10 MB becomes a `pending` capture (`accepted`), anything else is `skipped`; when the company has automatic reading on, is not on trial and a reading provider is configured, each capture is read at once.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func inboundEmail(request: Requests.InboundEmailCaptureRequest, requestOptions: RequestOptions? = nil) async throws -> InboundEmailCaptureResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/capture/inbound-email",
            body: request,
            requestOptions: requestOptions,
            responseType: InboundEmailCaptureResponse.self
        )
    }

    /// Upload a supplier document (PDF, image, Word or PowerPoint, up to 10 MB; 422 for any other type) as a capture and read it at once. The result holds the extracted supplier, dates, totals and lines, the partner matched by VAT code, then partner code, then name, the raw text, and `status` `extracted` or `failed` with `error`. Needs a configured reading provider, is refused with 402 for a company on trial until its first top-up, and counts every page read as `ocr_page` usage. The draft is reviewed and saved with `capture/documents/confirm`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func documentsUpload(request: Requests.DocumentsUploadCaptureRequest, requestOptions: RequestOptions? = nil) async throws -> DocumentsUploadCaptureResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/capture/documents/upload",
            body: request,
            requestOptions: requestOptions,
            responseType: DocumentsUploadCaptureResponse.self
        )
    }

    /// Read a stored capture again and replace its draft (supplier, totals, lines, matched partner). A capture received over Peppol is parsed from its document again without a reading provider; any other needs the provider and, for a company on trial, the first top-up (402). Refused with 409 once the capture is linked to a purchase invoice.
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

    /// Return one capture with its extraction and raw text.
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

    /// List captures without raw text. Filterable by `status`, `matchedPartnerId` and `purchaseInvoiceId`; sortable by `createdAt` and `updatedAt`.
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