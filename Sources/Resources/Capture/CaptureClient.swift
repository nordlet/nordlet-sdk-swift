import Foundation

public final class CaptureClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func settingsGet(request: Requests.SettingsGetCaptureRequest, requestOptions: RequestOptions? = nil) async throws -> SettingsGetCaptureResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/capture/settings/get",
            body: request,
            requestOptions: requestOptions,
            responseType: SettingsGetCaptureResponse.self
        )
    }

    public func settingsUpdate(request: Requests.SettingsUpdateCaptureRequest, requestOptions: RequestOptions? = nil) async throws -> SettingsUpdateCaptureResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/capture/settings/update",
            body: request,
            requestOptions: requestOptions,
            responseType: SettingsUpdateCaptureResponse.self
        )
    }

    public func settingsRegenerateIntake(request: Requests.SettingsRegenerateIntakeCaptureRequest, requestOptions: RequestOptions? = nil) async throws -> SettingsRegenerateIntakeCaptureResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/capture/settings/regenerate-intake",
            body: request,
            requestOptions: requestOptions,
            responseType: SettingsRegenerateIntakeCaptureResponse.self
        )
    }

    public func inboundEmail(request: Requests.InboundEmailCaptureRequest, requestOptions: RequestOptions? = nil) async throws -> InboundEmailCaptureResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/capture/inbound-email",
            body: request,
            requestOptions: requestOptions,
            responseType: InboundEmailCaptureResponse.self
        )
    }

    public func documentsUpload(request: Requests.DocumentsUploadCaptureRequest, requestOptions: RequestOptions? = nil) async throws -> DocumentsUploadCaptureResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/capture/documents/upload",
            body: request,
            requestOptions: requestOptions,
            responseType: DocumentsUploadCaptureResponse.self
        )
    }

    public func documentsExtract(request: Requests.DocumentsExtractCaptureRequest, requestOptions: RequestOptions? = nil) async throws -> DocumentsExtractCaptureResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/capture/documents/extract",
            body: request,
            requestOptions: requestOptions,
            responseType: DocumentsExtractCaptureResponse.self
        )
    }

    public func documentsGet(request: Requests.DocumentsGetCaptureRequest, requestOptions: RequestOptions? = nil) async throws -> DocumentsGetCaptureResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/capture/documents/get",
            body: request,
            requestOptions: requestOptions,
            responseType: DocumentsGetCaptureResponse.self
        )
    }

    public func documentsList(request: Requests.DocumentsListCaptureRequest, requestOptions: RequestOptions? = nil) async throws -> DocumentsListCaptureResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/capture/documents/list",
            body: request,
            requestOptions: requestOptions,
            responseType: DocumentsListCaptureResponse.self
        )
    }

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