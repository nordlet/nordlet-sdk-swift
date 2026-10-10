import Foundation

public final class SalesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func invoicesCreate(request: Requests.InvoicesCreateSalesRequest, requestOptions: RequestOptions? = nil) async throws -> InvoicesCreateSalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/create",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoicesCreateSalesResponse.self
        )
    }

    public func invoicesGet(request: Requests.InvoicesGetSalesRequest, requestOptions: RequestOptions? = nil) async throws -> InvoicesGetSalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/get",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoicesGetSalesResponse.self
        )
    }

    public func invoicesPdf(request: Requests.InvoicesPdfSalesRequest, requestOptions: RequestOptions? = nil) async throws -> InvoicesPdfSalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/pdf",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoicesPdfSalesResponse.self
        )
    }

    public func invoicesSend(request: Requests.InvoicesSendSalesRequest, requestOptions: RequestOptions? = nil) async throws -> InvoicesSendSalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/send",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoicesSendSalesResponse.self
        )
    }

    public func invoicesPeppolXml(request: Requests.InvoicesPeppolXmlSalesRequest, requestOptions: RequestOptions? = nil) async throws -> InvoicesPeppolXmlSalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/peppol-xml",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoicesPeppolXmlSalesResponse.self
        )
    }

    /// Send an issued invoice or credit note to the customer over Peppol through the company's own access point (Settings → Compliance → EU; Nordlet supports Recommand, Storecove and e-invoice.be). Without one the call is refused with 422 and the document can only be downloaded with `sales/invoices/peppol-xml`. `status` is `pending` until the receiving access point confirms, then `delivered`; `failed` and `rejected` come with `detail`, and the invoice can then be sent again. Later changes arrive through the access point's webhook and are announced as `sale_invoice.peppol_delivered`, `sale_invoice.peppol_rejected` and `sale_invoice.peppol_failed`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func invoicesPeppolSend(request: Requests.InvoicesPeppolSendSalesRequest, requestOptions: RequestOptions? = nil) async throws -> InvoicesPeppolSendSalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/peppol-send",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoicesPeppolSendSalesResponse.self
        )
    }

    /// Ask the company's Peppol access point what happened to an invoice sent with `sales/invoices/peppol-send`, and store the answer: `pending`, `delivered` (the receiving access point confirmed it), `rejected` (the receiver refused it, see `detail`) or `failed` (it could not be delivered, see `detail`). The access point's webhook updates the same fields without this call. Storecove has no call for the status of a sent document, so for a Storecove access point this answers 422 and the status comes only from its webhook.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func invoicesPeppolStatus(request: Requests.InvoicesPeppolStatusSalesRequest, requestOptions: RequestOptions? = nil) async throws -> InvoicesPeppolStatusSalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/peppol-status",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoicesPeppolStatusSalesResponse.self
        )
    }

    /// Render an issued invoice as the national e-invoicing payload for the company country: FatturaPA (IT), KSeF FA(3) (PL) or UBL CIUS-RO (RO). Review the warnings - data the invoice does not carry is flagged, never invented.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func invoicesEinvoiceXml(request: Requests.InvoicesEinvoiceXmlSalesRequest, requestOptions: RequestOptions? = nil) async throws -> InvoicesEinvoiceXmlSalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/einvoice-xml",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoicesEinvoiceXmlSalesResponse.self
        )
    }

    /// Build the national e-invoicing payload and deliver it over the transport configured for the country gateway in compliance settings. With transport=direct the request talks to the tax authority itself - SdICoop over 2-way TLS for Italy, a KSeF session for Poland, ANAF SPV OAuth for Romania - and returns the national number as soon as the channel assigns one. With transport=bridge the payload goes to the configured bridge endpoint (an accredited intermediary or connector) instead.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func invoicesEinvoiceSend(request: Requests.InvoicesEinvoiceSendSalesRequest, requestOptions: RequestOptions? = nil) async throws -> InvoicesEinvoiceSendSalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/einvoice-send",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoicesEinvoiceSendSalesResponse.self
        )
    }

    /// Ask the national e-invoicing channel what happened to an invoice that was already sent, and store the answer. Italy, Poland and Romania return the outcome only on request - none of them calls back - so this is the way the national number and any rejection reason reach the invoice.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func invoicesEinvoiceStatus(request: Requests.InvoicesEinvoiceStatusSalesRequest, requestOptions: RequestOptions? = nil) async throws -> InvoicesEinvoiceStatusSalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/einvoice-status",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoicesEinvoiceStatusSalesResponse.self
        )
    }

    public func invoicesUpdate(request: Requests.InvoicesUpdateSalesRequest, requestOptions: RequestOptions? = nil) async throws -> InvoicesUpdateSalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/update",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoicesUpdateSalesResponse.self
        )
    }

    public func invoicesDelete(request: Requests.InvoicesDeleteSalesRequest, requestOptions: RequestOptions? = nil) async throws -> InvoicesDeleteSalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoicesDeleteSalesResponse.self
        )
    }

    public func invoicesIssue(request: Requests.InvoicesIssueSalesRequest, requestOptions: RequestOptions? = nil) async throws -> InvoicesIssueSalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/issue",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoicesIssueSalesResponse.self
        )
    }

    public func invoicesLock(request: Requests.InvoicesLockSalesRequest, requestOptions: RequestOptions? = nil) async throws -> InvoicesLockSalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/lock",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoicesLockSalesResponse.self
        )
    }

    public func invoicesUnlock(request: Requests.InvoicesUnlockSalesRequest, requestOptions: RequestOptions? = nil) async throws -> InvoicesUnlockSalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/unlock",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoicesUnlockSalesResponse.self
        )
    }

    public func invoicesPaymentLink(request: Requests.InvoicesPaymentLinkSalesRequest, requestOptions: RequestOptions? = nil) async throws -> InvoicesPaymentLinkSalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/payment-link",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoicesPaymentLinkSalesResponse.self
        )
    }

    public func invoicesPaymentSettingsGet(request: Requests.InvoicesPaymentSettingsGetSalesRequest, requestOptions: RequestOptions? = nil) async throws -> InvoicesPaymentSettingsGetSalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/payment-settings/get",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoicesPaymentSettingsGetSalesResponse.self
        )
    }

    public func invoicesPaymentSettingsUpdate(request: Requests.InvoicesPaymentSettingsUpdateSalesRequest, requestOptions: RequestOptions? = nil) async throws -> InvoicesPaymentSettingsUpdateSalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/payment-settings/update",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoicesPaymentSettingsUpdateSalesResponse.self
        )
    }

    public func recognitionSchedulesList(request: Requests.RecognitionSchedulesListSalesRequest, requestOptions: RequestOptions? = nil) async throws -> RecognitionSchedulesListSalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/recognition-schedules/list",
            body: request,
            requestOptions: requestOptions,
            responseType: RecognitionSchedulesListSalesResponse.self
        )
    }

    public func invoicesApplyAdvance(request: Requests.InvoicesApplyAdvanceSalesRequest, requestOptions: RequestOptions? = nil) async throws -> InvoicesApplyAdvanceSalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/apply-advance",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoicesApplyAdvanceSalesResponse.self
        )
    }

    public func invoicesList(request: Requests.InvoicesListSalesRequest, requestOptions: RequestOptions? = nil) async throws -> InvoicesListSalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/invoices/list",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoicesListSalesResponse.self
        )
    }

    public func actsCreate(request: Requests.ActsCreateSalesRequest, requestOptions: RequestOptions? = nil) async throws -> ActsCreateSalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/acts/create",
            body: request,
            requestOptions: requestOptions,
            responseType: ActsCreateSalesResponse.self
        )
    }

    public func actsUpdate(request: Requests.ActsUpdateSalesRequest, requestOptions: RequestOptions? = nil) async throws -> ActsUpdateSalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/acts/update",
            body: request,
            requestOptions: requestOptions,
            responseType: ActsUpdateSalesResponse.self
        )
    }

    public func actsIssue(request: Requests.ActsIssueSalesRequest, requestOptions: RequestOptions? = nil) async throws -> ActsIssueSalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/acts/issue",
            body: request,
            requestOptions: requestOptions,
            responseType: ActsIssueSalesResponse.self
        )
    }

    public func actsCancel(request: Requests.ActsCancelSalesRequest, requestOptions: RequestOptions? = nil) async throws -> ActsCancelSalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/acts/cancel",
            body: request,
            requestOptions: requestOptions,
            responseType: ActsCancelSalesResponse.self
        )
    }

    public func actsGet(request: Requests.ActsGetSalesRequest, requestOptions: RequestOptions? = nil) async throws -> ActsGetSalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/acts/get",
            body: request,
            requestOptions: requestOptions,
            responseType: ActsGetSalesResponse.self
        )
    }

    public func actsList(request: Requests.ActsListSalesRequest, requestOptions: RequestOptions? = nil) async throws -> ActsListSalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/acts/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ActsListSalesResponse.self
        )
    }

    public func actsPdf(request: Requests.ActsPdfSalesRequest, requestOptions: RequestOptions? = nil) async throws -> ActsPdfSalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/acts/pdf",
            body: request,
            requestOptions: requestOptions,
            responseType: ActsPdfSalesResponse.self
        )
    }

    public func recognitionCompute(request: Requests.RecognitionComputeSalesRequest, requestOptions: RequestOptions? = nil) async throws -> RecognitionComputeSalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/recognition/compute",
            body: request,
            requestOptions: requestOptions,
            responseType: RecognitionComputeSalesResponse.self
        )
    }

    public func recognitionRun(request: Requests.RecognitionRunSalesRequest, requestOptions: RequestOptions? = nil) async throws -> RecognitionRunSalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/recognition/run",
            body: request,
            requestOptions: requestOptions,
            responseType: RecognitionRunSalesResponse.self
        )
    }

    public func recognitionProgress(request: Requests.RecognitionProgressSalesRequest, requestOptions: RequestOptions? = nil) async throws -> RecognitionProgressSalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/recognition/progress",
            body: request,
            requestOptions: requestOptions,
            responseType: RecognitionProgressSalesResponse.self
        )
    }

    /// Apply an IFRS 15 contract modification to a deferred invoice line. Prospective: cancel the pending schedule and respread the unrecognized remainder over the new terms. Cumulative catch-up (ratable only): recompute revenue as if the new terms applied from the start and post the difference immediately.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func recognitionModify(request: Requests.RecognitionModifySalesRequest, requestOptions: RequestOptions? = nil) async throws -> RecognitionModifySalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/recognition/modify",
            body: request,
            requestOptions: requestOptions,
            responseType: RecognitionModifySalesResponse.self
        )
    }

    public func recognitionRunsList(request: Requests.RecognitionRunsListSalesRequest, requestOptions: RequestOptions? = nil) async throws -> RecognitionRunsListSalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/recognition/runs/list",
            body: request,
            requestOptions: requestOptions,
            responseType: RecognitionRunsListSalesResponse.self
        )
    }

    public func recognitionSummary(request: Requests.RecognitionSummarySalesRequest, requestOptions: RequestOptions? = nil) async throws -> RecognitionSummarySalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/recognition/summary",
            body: request,
            requestOptions: requestOptions,
            responseType: RecognitionSummarySalesResponse.self
        )
    }

    public func refundLiabilityList(request: Requests.RefundLiabilityListSalesRequest, requestOptions: RequestOptions? = nil) async throws -> RefundLiabilityListSalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/refund-liability/list",
            body: request,
            requestOptions: requestOptions,
            responseType: RefundLiabilityListSalesResponse.self
        )
    }

    public func refundLiabilityTrueUp(request: Requests.RefundLiabilityTrueUpSalesRequest, requestOptions: RequestOptions? = nil) async throws -> RefundLiabilityTrueUpSalesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/sales/refund-liability/true-up",
            body: request,
            requestOptions: requestOptions,
            responseType: RefundLiabilityTrueUpSalesResponse.self
        )
    }
}