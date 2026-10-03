import Foundation

public final class SalesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func postV1SalesInvoicesCreate(request: Requests.PostV1SalesInvoicesCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesInvoicesCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesInvoicesCreateResponse.self
        )
    }

    public func postV1SalesInvoicesGet(request: Requests.PostV1SalesInvoicesGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesInvoicesGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesInvoicesGetResponse.self
        )
    }

    public func postV1SalesInvoicesPdf(request: Requests.PostV1SalesInvoicesPdfRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesInvoicesPdfResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/pdf",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesInvoicesPdfResponse.self
        )
    }

    public func postV1SalesInvoicesSend(request: Requests.PostV1SalesInvoicesSendRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesInvoicesSendResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/send",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesInvoicesSendResponse.self
        )
    }

    public func postV1SalesInvoicesPeppolXml(request: Requests.PostV1SalesInvoicesPeppolXmlRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesInvoicesPeppolXmlResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/peppol-xml",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesInvoicesPeppolXmlResponse.self
        )
    }

    public func postV1SalesInvoicesPeppolSend(request: Requests.PostV1SalesInvoicesPeppolSendRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesInvoicesPeppolSendResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/peppol-send",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesInvoicesPeppolSendResponse.self
        )
    }

    /// Render an issued invoice as the national e-invoicing payload for the company country: FatturaPA (IT), KSeF FA(3) (PL) or UBL CIUS-RO (RO). Review the warnings - data the invoice does not carry is flagged, never invented.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1SalesInvoicesEinvoiceXml(request: Requests.PostV1SalesInvoicesEinvoiceXmlRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesInvoicesEinvoiceXmlResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/einvoice-xml",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesInvoicesEinvoiceXmlResponse.self
        )
    }

    /// Build the national e-invoicing payload and deliver it over the transport configured for the country gateway in compliance settings. With transport=direct the request talks to the tax authority itself - SdICoop over 2-way TLS for Italy, a KSeF session for Poland, ANAF SPV OAuth for Romania - and returns the national number as soon as the channel assigns one. With transport=bridge the payload goes to the configured bridge endpoint (an accredited intermediary or connector) instead.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1SalesInvoicesEinvoiceSend(request: Requests.PostV1SalesInvoicesEinvoiceSendRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesInvoicesEinvoiceSendResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/einvoice-send",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesInvoicesEinvoiceSendResponse.self
        )
    }

    /// Ask the national e-invoicing channel what happened to an invoice that was already sent, and store the answer. Italy, Poland and Romania return the outcome only on request - none of them calls back - so this is the way the national number and any rejection reason reach the invoice.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1SalesInvoicesEinvoiceStatus(request: Requests.PostV1SalesInvoicesEinvoiceStatusRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesInvoicesEinvoiceStatusResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/einvoice-status",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesInvoicesEinvoiceStatusResponse.self
        )
    }

    public func postV1SalesInvoicesUpdate(request: Requests.PostV1SalesInvoicesUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesInvoicesUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesInvoicesUpdateResponse.self
        )
    }

    public func postV1SalesInvoicesDelete(request: Requests.PostV1SalesInvoicesDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesInvoicesDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesInvoicesDeleteResponse.self
        )
    }

    public func postV1SalesInvoicesIssue(request: Requests.PostV1SalesInvoicesIssueRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesInvoicesIssueResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/issue",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesInvoicesIssueResponse.self
        )
    }

    public func postV1SalesInvoicesLock(request: Requests.PostV1SalesInvoicesLockRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesInvoicesLockResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/lock",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesInvoicesLockResponse.self
        )
    }

    public func postV1SalesInvoicesUnlock(request: Requests.PostV1SalesInvoicesUnlockRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesInvoicesUnlockResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/unlock",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesInvoicesUnlockResponse.self
        )
    }

    public func postV1SalesInvoicesPaymentLink(request: Requests.PostV1SalesInvoicesPaymentLinkRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesInvoicesPaymentLinkResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/payment-link",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesInvoicesPaymentLinkResponse.self
        )
    }

    public func postV1SalesInvoicesPaymentSettingsGet(request: Requests.PostV1SalesInvoicesPaymentSettingsGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesInvoicesPaymentSettingsGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/payment-settings/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesInvoicesPaymentSettingsGetResponse.self
        )
    }

    public func postV1SalesInvoicesPaymentSettingsUpdate(request: Requests.PostV1SalesInvoicesPaymentSettingsUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesInvoicesPaymentSettingsUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/payment-settings/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesInvoicesPaymentSettingsUpdateResponse.self
        )
    }

    public func postV1SalesRecognitionSchedulesList(request: Requests.PostV1SalesRecognitionSchedulesListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesRecognitionSchedulesListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/recognition-schedules/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesRecognitionSchedulesListResponse.self
        )
    }

    public func postV1SalesInvoicesApplyAdvance(request: Requests.PostV1SalesInvoicesApplyAdvanceRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesInvoicesApplyAdvanceResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/apply-advance",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesInvoicesApplyAdvanceResponse.self
        )
    }

    public func postV1SalesInvoicesList(request: Requests.PostV1SalesInvoicesListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesInvoicesListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesInvoicesListResponse.self
        )
    }

    public func postV1SalesActsCreate(request: Requests.PostV1SalesActsCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesActsCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/acts/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesActsCreateResponse.self
        )
    }

    public func postV1SalesActsUpdate(request: Requests.PostV1SalesActsUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesActsUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/acts/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesActsUpdateResponse.self
        )
    }

    public func postV1SalesActsIssue(request: Requests.PostV1SalesActsIssueRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesActsIssueResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/acts/issue",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesActsIssueResponse.self
        )
    }

    public func postV1SalesActsCancel(request: Requests.PostV1SalesActsCancelRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesActsCancelResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/acts/cancel",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesActsCancelResponse.self
        )
    }

    public func postV1SalesActsGet(request: Requests.PostV1SalesActsGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesActsGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/acts/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesActsGetResponse.self
        )
    }

    public func postV1SalesActsList(request: Requests.PostV1SalesActsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesActsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/acts/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesActsListResponse.self
        )
    }

    public func postV1SalesActsPdf(request: Requests.PostV1SalesActsPdfRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesActsPdfResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/acts/pdf",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesActsPdfResponse.self
        )
    }

    public func postV1OperationTypesCreate(request: Requests.PostV1OperationTypesCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1OperationTypesCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/operation-types/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1OperationTypesCreateResponse.self
        )
    }

    public func postV1OperationTypesUpdate(request: Requests.PostV1OperationTypesUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1OperationTypesUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/operation-types/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1OperationTypesUpdateResponse.self
        )
    }

    public func postV1OperationTypesGet(request: Requests.PostV1OperationTypesGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1OperationTypesGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/operation-types/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1OperationTypesGetResponse.self
        )
    }

    public func postV1OperationTypesDelete(request: Requests.PostV1OperationTypesDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1OperationTypesDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/operation-types/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1OperationTypesDeleteResponse.self
        )
    }

    public func postV1OperationTypesList(request: Requests.PostV1OperationTypesListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1OperationTypesListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/operation-types/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1OperationTypesListResponse.self
        )
    }

    public func postV1DocumentSeriesCreate(request: Requests.PostV1DocumentSeriesCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DocumentSeriesCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/document-series/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DocumentSeriesCreateResponse.self
        )
    }

    public func postV1DocumentSeriesUpdate(request: Requests.PostV1DocumentSeriesUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DocumentSeriesUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/document-series/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DocumentSeriesUpdateResponse.self
        )
    }

    public func postV1DocumentSeriesGet(request: Requests.PostV1DocumentSeriesGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DocumentSeriesGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/document-series/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DocumentSeriesGetResponse.self
        )
    }

    public func postV1DocumentSeriesDelete(request: Requests.PostV1DocumentSeriesDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DocumentSeriesDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/document-series/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DocumentSeriesDeleteResponse.self
        )
    }

    public func postV1DocumentSeriesList(request: Requests.PostV1DocumentSeriesListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1DocumentSeriesListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/document-series/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1DocumentSeriesListResponse.self
        )
    }

    public func postV1SalesRecognitionCompute(request: Requests.PostV1SalesRecognitionComputeRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesRecognitionComputeResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/recognition/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesRecognitionComputeResponse.self
        )
    }

    public func postV1SalesRecognitionRun(request: Requests.PostV1SalesRecognitionRunRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesRecognitionRunResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/recognition/run",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesRecognitionRunResponse.self
        )
    }

    public func postV1SalesRecognitionProgress(request: Requests.PostV1SalesRecognitionProgressRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesRecognitionProgressResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/recognition/progress",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesRecognitionProgressResponse.self
        )
    }

    /// Apply an IFRS 15 contract modification to a deferred invoice line. Prospective: cancel the pending schedule and respread the unrecognized remainder over the new terms. Cumulative catch-up (ratable only): recompute revenue as if the new terms applied from the start and post the difference immediately.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func postV1SalesRecognitionModify(request: Requests.PostV1SalesRecognitionModifyRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesRecognitionModifyResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/recognition/modify",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesRecognitionModifyResponse.self
        )
    }

    public func postV1SalesRecognitionRunsList(request: Requests.PostV1SalesRecognitionRunsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesRecognitionRunsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/recognition/runs/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesRecognitionRunsListResponse.self
        )
    }

    public func postV1SalesRecognitionSummary(request: Requests.PostV1SalesRecognitionSummaryRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesRecognitionSummaryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/recognition/summary",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesRecognitionSummaryResponse.self
        )
    }

    public func postV1SalesRefundLiabilityList(request: Requests.PostV1SalesRefundLiabilityListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesRefundLiabilityListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/refund-liability/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesRefundLiabilityListResponse.self
        )
    }

    public func postV1SalesRefundLiabilityTrueUp(request: Requests.PostV1SalesRefundLiabilityTrueUpRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1SalesRefundLiabilityTrueUpResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/refund-liability/true-up",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1SalesRefundLiabilityTrueUpResponse.self
        )
    }
}