import Foundation

public final class CaptureClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func postV1CaptureSettingsGet(request: Requests.PostV1CaptureSettingsGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CaptureSettingsGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/capture/settings/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CaptureSettingsGetResponse.self
        )
    }

    public func postV1CaptureSettingsUpdate(request: Requests.PostV1CaptureSettingsUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CaptureSettingsUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/capture/settings/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CaptureSettingsUpdateResponse.self
        )
    }

    public func postV1CaptureSettingsRegenerateIntake(request: Requests.PostV1CaptureSettingsRegenerateIntakeRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CaptureSettingsRegenerateIntakeResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/capture/settings/regenerate-intake",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CaptureSettingsRegenerateIntakeResponse.self
        )
    }

    public func receiveAnInboundEmailWithSupplierDocumentsAttachedPostmarkStyleOrGenericJson(request: Requests.PostV1CaptureInboundEmailRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CaptureInboundEmailResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/capture/inbound-email",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CaptureInboundEmailResponse.self
        )
    }

    public func readAVendorBillOrReceiptAndReturnAnEditablePurchaseInvoiceDraft(request: Requests.PostV1CaptureDocumentsUploadRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CaptureDocumentsUploadResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/capture/documents/upload",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CaptureDocumentsUploadResponse.self
        )
    }

    public func reReadAStoredCaptureReplacingThePreviousDraft(request: Requests.PostV1CaptureDocumentsExtractRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CaptureDocumentsExtractResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/capture/documents/extract",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CaptureDocumentsExtractResponse.self
        )
    }

    public func postV1CaptureDocumentsGet(request: Requests.PostV1CaptureDocumentsGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CaptureDocumentsGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/capture/documents/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CaptureDocumentsGetResponse.self
        )
    }

    public func postV1CaptureDocumentsList(request: Requests.PostV1CaptureDocumentsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CaptureDocumentsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/capture/documents/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CaptureDocumentsListResponse.self
        )
    }

    public func postV1CaptureDocumentsDelete(request: Requests.PostV1CaptureDocumentsDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CaptureDocumentsDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/capture/documents/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CaptureDocumentsDeleteResponse.self
        )
    }

    public func saveTheReviewedDraftAsAPurchaseInvoiceAndAttachTheOriginalDocument(request: Requests.PostV1CaptureDocumentsConfirmRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CaptureDocumentsConfirmResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/capture/documents/confirm",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CaptureDocumentsConfirmResponse.self
        )
    }
}